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
include glfw-3.1.2/tests/CMakeFiles/threads.dir/depend.make

# Include the progress variables for this target.
include glfw-3.1.2/tests/CMakeFiles/threads.dir/progress.make

# Include the compile flags for this target's objects.
include glfw-3.1.2/tests/CMakeFiles/threads.dir/flags.make

glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o: glfw-3.1.2/tests/CMakeFiles/threads.dir/flags.make
glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o: glfw-3.1.2/tests/threads.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threads.dir/threads.c.o   -c /Users/tgsimao/git/tetris/glfw-3.1.2/tests/threads.c

glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/threads.c.i"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tgsimao/git/tetris/glfw-3.1.2/tests/threads.c > CMakeFiles/threads.dir/threads.c.i

glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/threads.c.s"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tgsimao/git/tetris/glfw-3.1.2/tests/threads.c -o CMakeFiles/threads.dir/threads.c.s

glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.requires:

.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.requires

glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.provides: glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.requires
	$(MAKE) -f glfw-3.1.2/tests/CMakeFiles/threads.dir/build.make glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.provides.build
.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.provides

glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.provides.build: glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o


glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: glfw-3.1.2/tests/CMakeFiles/threads.dir/flags.make
glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: glfw-3.1.2/deps/tinycthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/tinycthread.c.o   -c /Users/tgsimao/git/tetris/glfw-3.1.2/deps/tinycthread.c

glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/tinycthread.c.i"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/tgsimao/git/tetris/glfw-3.1.2/deps/tinycthread.c > CMakeFiles/threads.dir/__/deps/tinycthread.c.i

glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/tinycthread.c.s"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/tgsimao/git/tetris/glfw-3.1.2/deps/tinycthread.c -o CMakeFiles/threads.dir/__/deps/tinycthread.c.s

glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires:

.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires

glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides: glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f glfw-3.1.2/tests/CMakeFiles/threads.dir/build.make glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides

glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build: glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o


# Object files for target threads
threads_OBJECTS = \
"CMakeFiles/threads.dir/threads.c.o" \
"CMakeFiles/threads.dir/__/deps/tinycthread.c.o"

# External object files for target threads
threads_EXTERNAL_OBJECTS =

glfw-3.1.2/tests/threads.app/Contents/MacOS/threads: glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o
glfw-3.1.2/tests/threads.app/Contents/MacOS/threads: glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o
glfw-3.1.2/tests/threads.app/Contents/MacOS/threads: glfw-3.1.2/tests/CMakeFiles/threads.dir/build.make
glfw-3.1.2/tests/threads.app/Contents/MacOS/threads: glfw-3.1.2/src/libglfw3.a
glfw-3.1.2/tests/threads.app/Contents/MacOS/threads: glfw-3.1.2/tests/CMakeFiles/threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tgsimao/git/tetris/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable threads.app/Contents/MacOS/threads"
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw-3.1.2/tests/CMakeFiles/threads.dir/build: glfw-3.1.2/tests/threads.app/Contents/MacOS/threads

.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/build

glfw-3.1.2/tests/CMakeFiles/threads.dir/requires: glfw-3.1.2/tests/CMakeFiles/threads.dir/threads.c.o.requires
glfw-3.1.2/tests/CMakeFiles/threads.dir/requires: glfw-3.1.2/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires

.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/requires

glfw-3.1.2/tests/CMakeFiles/threads.dir/clean:
	cd /Users/tgsimao/git/tetris/glfw-3.1.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/threads.dir/cmake_clean.cmake
.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/clean

glfw-3.1.2/tests/CMakeFiles/threads.dir/depend:
	cd /Users/tgsimao/git/tetris && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tgsimao/git/tetris /Users/tgsimao/git/tetris/glfw-3.1.2/tests /Users/tgsimao/git/tetris /Users/tgsimao/git/tetris/glfw-3.1.2/tests /Users/tgsimao/git/tetris/glfw-3.1.2/tests/CMakeFiles/threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw-3.1.2/tests/CMakeFiles/threads.dir/depend

