# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ramanlamba/Desktop/deribit/oems

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23"

# Include any dependencies generated for this target.
include CMakeFiles/websocket_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/websocket_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/websocket_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/websocket_server.dir/flags.make

CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o: CMakeFiles/websocket_server.dir/flags.make
CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o: /Users/ramanlamba/Desktop/deribit/oems/WebSocketServer.cpp
CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o: CMakeFiles/websocket_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o"
	/opt/homebrew/bin/aarch64-apple-darwin23-g++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o -MF CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o.d -o CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o -c /Users/ramanlamba/Desktop/deribit/oems/WebSocketServer.cpp

CMakeFiles/websocket_server.dir/WebSocketServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/websocket_server.dir/WebSocketServer.cpp.i"
	/opt/homebrew/bin/aarch64-apple-darwin23-g++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ramanlamba/Desktop/deribit/oems/WebSocketServer.cpp > CMakeFiles/websocket_server.dir/WebSocketServer.cpp.i

CMakeFiles/websocket_server.dir/WebSocketServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/websocket_server.dir/WebSocketServer.cpp.s"
	/opt/homebrew/bin/aarch64-apple-darwin23-g++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ramanlamba/Desktop/deribit/oems/WebSocketServer.cpp -o CMakeFiles/websocket_server.dir/WebSocketServer.cpp.s

CMakeFiles/websocket_server.dir/OrderManager.cpp.o: CMakeFiles/websocket_server.dir/flags.make
CMakeFiles/websocket_server.dir/OrderManager.cpp.o: /Users/ramanlamba/Desktop/deribit/oems/OrderManager.cpp
CMakeFiles/websocket_server.dir/OrderManager.cpp.o: CMakeFiles/websocket_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/websocket_server.dir/OrderManager.cpp.o"
	/opt/homebrew/bin/aarch64-apple-darwin23-g++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/websocket_server.dir/OrderManager.cpp.o -MF CMakeFiles/websocket_server.dir/OrderManager.cpp.o.d -o CMakeFiles/websocket_server.dir/OrderManager.cpp.o -c /Users/ramanlamba/Desktop/deribit/oems/OrderManager.cpp

CMakeFiles/websocket_server.dir/OrderManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/websocket_server.dir/OrderManager.cpp.i"
	/opt/homebrew/bin/aarch64-apple-darwin23-g++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ramanlamba/Desktop/deribit/oems/OrderManager.cpp > CMakeFiles/websocket_server.dir/OrderManager.cpp.i

CMakeFiles/websocket_server.dir/OrderManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/websocket_server.dir/OrderManager.cpp.s"
	/opt/homebrew/bin/aarch64-apple-darwin23-g++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ramanlamba/Desktop/deribit/oems/OrderManager.cpp -o CMakeFiles/websocket_server.dir/OrderManager.cpp.s

# Object files for target websocket_server
websocket_server_OBJECTS = \
"CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o" \
"CMakeFiles/websocket_server.dir/OrderManager.cpp.o"

# External object files for target websocket_server
websocket_server_EXTERNAL_OBJECTS =

/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: CMakeFiles/websocket_server.dir/WebSocketServer.cpp.o
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: CMakeFiles/websocket_server.dir/OrderManager.cpp.o
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: CMakeFiles/websocket_server.dir/build.make
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: _deps/cpr-build/cpr/libcpr.1.10.5.dylib
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: _deps/libwebsockets-build/lib/libwebsockets.a
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: _deps/curl-build/lib/libcurl-d.4.8.0.dylib
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: /opt/homebrew/lib/libssl.dylib
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: /opt/homebrew/lib/libcrypto.dylib
/Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server: CMakeFiles/websocket_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/websocket_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/websocket_server.dir/build: /Users/ramanlamba/Desktop/deribit/oems/oems/websocket_server
.PHONY : CMakeFiles/websocket_server.dir/build

CMakeFiles/websocket_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/websocket_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/websocket_server.dir/clean

CMakeFiles/websocket_server.dir/depend:
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ramanlamba/Desktop/deribit/oems /Users/ramanlamba/Desktop/deribit/oems "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CMakeFiles/websocket_server.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/websocket_server.dir/depend

