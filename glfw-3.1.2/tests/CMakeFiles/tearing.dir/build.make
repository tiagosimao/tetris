# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tgsimao/git/tetris

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tgsimao/git/tetris

# Include any dependencies generated for this target.
include glfw-3.1.2/tests/CMakeFiles/tearing.dir/depend.make

# Include the progress variables for this target.
include glfw-3.1.2/tests/CMakeFiles/tearing.dir/progress.make

# Include the compile flags for this target's objects.
include glfw-3.1.2/tests/CMakeFiles/tearing.dir/flags.make

glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o: glfw-3.1.2/tests/CMakeFiles/tearing.dir/flags.make
glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o: glfw-3.1.2/tests/tearing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tearing.dir/tearing.c.o   -c /Users/tgsimao/git/tetris/glfw-3.1.2/tests/tearing.c

glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/tearing.c.i"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tgsimao/git/tetris/glfw-3.1.2/tests/tearing.c > CMakeFiles/tearing.dir/tearing.c.i

glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/tearing.c.s"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tgsimao/git/tetris/glfw-3.1.2/tests/tearing.c -o CMakeFiles/tearing.dir/tearing.c.s

glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.requires:

.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.requires

glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.provides: glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.requires
	$(MAKE) -f glfw-3.1.2/tests/CMakeFiles/tearing.dir/build.make glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.provides.build
.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.provides

glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.provides.build: glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o


glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o: glfw-3.1.2/tests/CMakeFiles/tearing.dir/flags.make
glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o: glfw-3.1.2/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tearing.dir/__/deps/getopt.c.o   -c /Users/tgsimao/git/tetris/glfw-3.1.2/deps/getopt.c

glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/__/deps/getopt.c.i"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tgsimao/git/tetris/glfw-3.1.2/deps/getopt.c > CMakeFiles/tearing.dir/__/deps/getopt.c.i

glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/__/deps/getopt.c.s"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tgsimao/git/tetris/glfw-3.1.2/deps/getopt.c -o CMakeFiles/tearing.dir/__/deps/getopt.c.s

glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.requires:

.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.requires

glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.provides: glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f glfw-3.1.2/tests/CMakeFiles/tearing.dir/build.make glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.provides.build
.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.provides

glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.provides.build: glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o


# Object files for target tearing
tearing_OBJECTS = \
"CMakeFiles/tearing.dir/tearing.c.o" \
"CMakeFiles/tearing.dir/__/deps/getopt.c.o"

# External object files for target tearing
tearing_EXTERNAL_OBJECTS =

glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o
glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o
glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: glfw-3.1.2/tests/CMakeFiles/tearing.dir/build.make
glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: glfw-3.1.2/src/libglfw3.a
glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: glfw-3.1.2/tests/CMakeFiles/tearing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable tearing.app/Contents/MacOS/tearing"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tearing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw-3.1.2/tests/CMakeFiles/tearing.dir/build: glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing

.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/build

glfw-3.1.2/tests/CMakeFiles/tearing.dir/requires: glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o.requires
glfw-3.1.2/tests/CMakeFiles/tearing.dir/requires: glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o.requires

.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/requires

glfw-3.1.2/tests/CMakeFiles/tearing.dir/clean:
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/tearing.dir/cmake_clean.cmake
.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/clean

glfw-3.1.2/tests/CMakeFiles/tearing.dir/depend:
	cd /Users/tgsimao/git/tetris && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tgsimao/git/tetris /Users/tgsimao/git/tetris/glfw-3.1.2/tests /Users/tgsimao/git/tetris /Users/tgsimao/git/tetris/glfw-3.1.2/tests /Users/tgsimao/git/tetris/glfw-3.1.2/tests/CMakeFiles/tearing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw-3.1.2/tests/CMakeFiles/tearing.dir/depend

