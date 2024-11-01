# Install script for directory: /Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/ramanlamba/Desktop/deribit/oems/out/install/GCC 14.2.0 aarch64-apple-darwin23")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/include/libwebsockets")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/include/libwebsockets.h"
    "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/include/lws_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets" TYPE FILE FILES
    "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/CMakeFiles/libwebsockets-config.cmake"
    "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/libwebsockets-config-version.cmake"
    "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/CMakeFiles/LwsCheckRequirements.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets/LibwebsocketsTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets/LibwebsocketsTargets.cmake"
         "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/CMakeFiles/Export/e08b449cd7cc1dd7e512a198fb780a74/LibwebsocketsTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets/LibwebsocketsTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets/LibwebsocketsTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets" TYPE FILE FILES "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/CMakeFiles/Export/e08b449cd7cc1dd7e512a198fb780a74/LibwebsocketsTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/libwebsockets" TYPE FILE FILES "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/CMakeFiles/Export/e08b449cd7cc1dd7e512a198fb780a74/LibwebsocketsTargets-debug.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/lib/cmake_install.cmake")
  include("/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps/cmake_install.cmake")
  include("/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/plugins/cmake_install.cmake")
  include("/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/lwsws/cmake_install.cmake")

endif()

