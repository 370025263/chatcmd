# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mac/code/cpp/chatcmd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mac/code/cpp/chatcmd/build

# Include any dependencies generated for this target.
include CMakeFiles/chatcmd.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/chatcmd.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/chatcmd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chatcmd.dir/flags.make

CMakeFiles/chatcmd.dir/src/main.cpp.o: CMakeFiles/chatcmd.dir/flags.make
CMakeFiles/chatcmd.dir/src/main.cpp.o: /Users/mac/code/cpp/chatcmd/src/main.cpp
CMakeFiles/chatcmd.dir/src/main.cpp.o: CMakeFiles/chatcmd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mac/code/cpp/chatcmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/chatcmd.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chatcmd.dir/src/main.cpp.o -MF CMakeFiles/chatcmd.dir/src/main.cpp.o.d -o CMakeFiles/chatcmd.dir/src/main.cpp.o -c /Users/mac/code/cpp/chatcmd/src/main.cpp

CMakeFiles/chatcmd.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chatcmd.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/code/cpp/chatcmd/src/main.cpp > CMakeFiles/chatcmd.dir/src/main.cpp.i

CMakeFiles/chatcmd.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chatcmd.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/code/cpp/chatcmd/src/main.cpp -o CMakeFiles/chatcmd.dir/src/main.cpp.s

# Object files for target chatcmd
chatcmd_OBJECTS = \
"CMakeFiles/chatcmd.dir/src/main.cpp.o"

# External object files for target chatcmd
chatcmd_EXTERNAL_OBJECTS =

chatcmd: CMakeFiles/chatcmd.dir/src/main.cpp.o
chatcmd: CMakeFiles/chatcmd.dir/build.make
chatcmd: /usr/local/lib/libssl.dylib
chatcmd: /usr/local/lib/libcrypto.dylib
chatcmd: CMakeFiles/chatcmd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mac/code/cpp/chatcmd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable chatcmd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chatcmd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chatcmd.dir/build: chatcmd
.PHONY : CMakeFiles/chatcmd.dir/build

CMakeFiles/chatcmd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chatcmd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chatcmd.dir/clean

CMakeFiles/chatcmd.dir/depend:
	cd /Users/mac/code/cpp/chatcmd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/code/cpp/chatcmd /Users/mac/code/cpp/chatcmd /Users/mac/code/cpp/chatcmd/build /Users/mac/code/cpp/chatcmd/build /Users/mac/code/cpp/chatcmd/build/CMakeFiles/chatcmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/chatcmd.dir/depend

