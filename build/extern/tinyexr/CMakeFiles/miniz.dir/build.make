# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build

# Include any dependencies generated for this target.
include extern/tinyexr/CMakeFiles/miniz.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include extern/tinyexr/CMakeFiles/miniz.dir/compiler_depend.make

# Include the progress variables for this target.
include extern/tinyexr/CMakeFiles/miniz.dir/progress.make

# Include the compile flags for this target's objects.
include extern/tinyexr/CMakeFiles/miniz.dir/flags.make

extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.o: extern/tinyexr/CMakeFiles/miniz.dir/flags.make
extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.o: ../extern/tinyexr/deps/miniz/miniz.c
extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.o: extern/tinyexr/CMakeFiles/miniz.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.o"
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.o -MF CMakeFiles/miniz.dir/deps/miniz/miniz.c.o.d -o CMakeFiles/miniz.dir/deps/miniz/miniz.c.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr/deps/miniz/miniz.c

extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/miniz.dir/deps/miniz/miniz.c.i"
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr/deps/miniz/miniz.c > CMakeFiles/miniz.dir/deps/miniz/miniz.c.i

extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/miniz.dir/deps/miniz/miniz.c.s"
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr/deps/miniz/miniz.c -o CMakeFiles/miniz.dir/deps/miniz/miniz.c.s

# Object files for target miniz
miniz_OBJECTS = \
"CMakeFiles/miniz.dir/deps/miniz/miniz.c.o"

# External object files for target miniz
miniz_EXTERNAL_OBJECTS =

extern/tinyexr/libminiz.a: extern/tinyexr/CMakeFiles/miniz.dir/deps/miniz/miniz.c.o
extern/tinyexr/libminiz.a: extern/tinyexr/CMakeFiles/miniz.dir/build.make
extern/tinyexr/libminiz.a: extern/tinyexr/CMakeFiles/miniz.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libminiz.a"
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr && $(CMAKE_COMMAND) -P CMakeFiles/miniz.dir/cmake_clean_target.cmake
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/miniz.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extern/tinyexr/CMakeFiles/miniz.dir/build: extern/tinyexr/libminiz.a
.PHONY : extern/tinyexr/CMakeFiles/miniz.dir/build

extern/tinyexr/CMakeFiles/miniz.dir/clean:
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr && $(CMAKE_COMMAND) -P CMakeFiles/miniz.dir/cmake_clean.cmake
.PHONY : extern/tinyexr/CMakeFiles/miniz.dir/clean

extern/tinyexr/CMakeFiles/miniz.dir/depend:
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/extern/tinyexr/CMakeFiles/miniz.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extern/tinyexr/CMakeFiles/miniz.dir/depend

