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
include _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/flags.make

_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.o: _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/flags.make
_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.o: _deps/libwebsockets-src/test-apps/test-server.c
_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.o: _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.o"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /opt/homebrew/bin/aarch64-apple-darwin23-gcc-14 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.o -MF CMakeFiles/test-server.dir/test-server.c.o.d -o CMakeFiles/test-server.dir/test-server.c.o -c "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/test-server.c"

_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test-server.dir/test-server.c.i"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /opt/homebrew/bin/aarch64-apple-darwin23-gcc-14 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/test-server.c" > CMakeFiles/test-server.dir/test-server.c.i

_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test-server.dir/test-server.c.s"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /opt/homebrew/bin/aarch64-apple-darwin23-gcc-14 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/test-server.c" -o CMakeFiles/test-server.dir/test-server.c.s

# Object files for target test-server
test__server_OBJECTS = \
"CMakeFiles/test-server.dir/test-server.c.o"

# External object files for target test-server
test__server_EXTERNAL_OBJECTS =

_deps/libwebsockets-build/bin/libwebsockets-test-server: _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/test-server.c.o
_deps/libwebsockets-build/bin/libwebsockets-test-server: _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/build.make
_deps/libwebsockets-build/bin/libwebsockets-test-server: _deps/libwebsockets-build/lib/libwebsockets.a
_deps/libwebsockets-build/bin/libwebsockets-test-server: /opt/homebrew/lib/libssl.dylib
_deps/libwebsockets-build/bin/libwebsockets-test-server: /opt/homebrew/lib/libcrypto.dylib
_deps/libwebsockets-build/bin/libwebsockets-test-server: _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-server.dir/link.txt --verbose=$(VERBOSE)
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E make_directory /Users/ramanlamba/Desktop/deribit/oems/out/build/GCC\ 14.2.0\ aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/libwebsockets-test-server.key.pem" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/libwebsockets-test-server.pem" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/favicon.ico" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/leaf.jpg" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/candide.zip" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/candide-uncompressed.zip" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/libwebsockets.org-logo.svg" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/http2.png" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/wss-over-h2.png" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/lws-common.js" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/test.html" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/test.css" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && /Users/ramanlamba/micromamba/lib/python3.9/site-packages/cmake/data/bin/cmake -E copy "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps/test.js" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/bin/../share/libwebsockets-test-server"

# Rule to build all files generated by this target.
_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/build: _deps/libwebsockets-build/bin/libwebsockets-test-server
.PHONY : _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/build

_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/clean:
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" && $(CMAKE_COMMAND) -P CMakeFiles/test-server.dir/cmake_clean.cmake
.PHONY : _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/clean

_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/depend:
	cd "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ramanlamba/Desktop/deribit/oems "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-src/test-apps" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps" "/Users/ramanlamba/Desktop/deribit/oems/out/build/GCC 14.2.0 aarch64-apple-darwin23/_deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : _deps/libwebsockets-build/test-apps/CMakeFiles/test-server.dir/depend

