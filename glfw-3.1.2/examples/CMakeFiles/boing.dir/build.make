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
include glfw-3.1.2/examples/CMakeFiles/boing.dir/depend.make

# Include the progress variables for this target.
include glfw-3.1.2/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include glfw-3.1.2/examples/CMakeFiles/boing.dir/flags.make

glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o: glfw-3.1.2/examples/CMakeFiles/boing.dir/flags.make
glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o: glfw-3.1.2/examples/boing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/boing.c.o   -c /Users/tgsimao/git/tetris/glfw-3.1.2/examples/boing.c

glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tgsimao/git/tetris/glfw-3.1.2/examples/boing.c > CMakeFiles/boing.dir/boing.c.i

glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tgsimao/git/tetris/glfw-3.1.2/examples/boing.c -o CMakeFiles/boing.dir/boing.c.s

glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.requires:

.PHONY : glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.requires

glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.provides: glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.requires
	$(MAKE) -f glfw-3.1.2/examples/CMakeFiles/boing.dir/build.make glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.provides.build
.PHONY : glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.provides

glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.provides.build: glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o


# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing.c.o"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

glfw-3.1.2/examples/boing.app/Contents/MacOS/boing: glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o
glfw-3.1.2/examples/boing.app/Contents/MacOS/boing: glfw-3.1.2/examples/CMakeFiles/boing.dir/build.make
glfw-3.1.2/examples/boing.app/Contents/MacOS/boing: glfw-3.1.2/src/libglfw3.a
glfw-3.1.2/examples/boing.app/Contents/MacOS/boing: glfw-3.1.2/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable boing.app/Contents/MacOS/boing"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw-3.1.2/examples/CMakeFiles/boing.dir/build: glfw-3.1.2/examples/boing.app/Contents/MacOS/boing

.PHONY : glfw-3.1.2/examples/CMakeFiles/boing.dir/build

glfw-3.1.2/examples/CMakeFiles/boing.dir/requires: glfw-3.1.2/examples/CMakeFiles/boing.dir/boing.c.o.requires

.PHONY : glfw-3.1.2/examples/CMakeFiles/boing.dir/requires

glfw-3.1.2/examples/CMakeFiles/boing.dir/clean:
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/examples && $(CMAKE_COMMAND) -P CMakeFiles/boing.dir/cmake_clean.cmake
.PHONY : glfw-3.1.2/examples/CMakeFiles/boing.dir/clean

glfw-3.1.2/examples/CMakeFiles/boing.dir/depend:
	cd /Users/tgsimao/git/tetris && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tgsimao/git/tetris /Users/tgsimao/git/tetris/glfw-3.1.2/examples /Users/tgsimao/git/tetris /Users/tgsimao/git/tetris/glfw-3.1.2/examples /Users/tgsimao/git/tetris/glfw-3.1.2/examples/CMakeFiles/boing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw-3.1.2/examples/CMakeFiles/boing.dir/depend

