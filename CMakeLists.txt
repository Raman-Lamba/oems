cmake_minimum_required(VERSION 3.5.0)
project(oems VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17) 
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set the executable output path
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/oems")

# Set the target architecture (assuming arm64)
set(CMAKE_OSX_ARCHITECTURES "arm64")

# Include FetchContent for dependencies
include(FetchContent)

# Fetch cpr
FetchContent_Declare(
    cpr 
    GIT_REPOSITORY https://github.com/libcpr/cpr.git
    GIT_TAG 1.10.5
)
FetchContent_MakeAvailable(cpr)

# Fetch nlohmann_json
find_package(nlohmann_json 3.11.3 REQUIRED)

# Fetch libwebsockets
FetchContent_Declare(
    libwebsockets
    GIT_REPOSITORY https://github.com/warmcat/libwebsockets.git
    GIT_TAG v4.3.2
)
FetchContent_MakeAvailable(libwebsockets)

# Add executables
add_executable(websocket_server WebSocketServer.cpp OrderManager.cpp)
add_executable(oems main.cpp OrderManager.cpp)
add_executable(trial trial.cpp)

# Link libraries to executables
target_link_libraries(oems PRIVATE cpr::cpr nlohmann_json::nlohmann_json websockets)
target_link_libraries(trial PRIVATE cpr::cpr nlohmann_json::nlohmann_json websockets)
target_link_libraries(websocket_server PRIVATE cpr::cpr nlohmann_json::nlohmann_json websockets) # Added missing dependencies

# Enable testing
include(CTest)
enable_testing()
