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
include CMakeFiles/render.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/render.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/render.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/render.dir/flags.make

CMakeFiles/render.dir/render.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/render.cpp.o: ../render.cpp
CMakeFiles/render.dir/render.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/render.dir/render.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/render.cpp.o -MF CMakeFiles/render.dir/render.cpp.o.d -o CMakeFiles/render.dir/render.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/render.cpp

CMakeFiles/render.dir/render.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/render.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/render.cpp > CMakeFiles/render.dir/render.cpp.i

CMakeFiles/render.dir/render.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/render.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/render.cpp -o CMakeFiles/render.dir/render.cpp.s

CMakeFiles/render.dir/bsdf.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/bsdf.cpp.o: ../bsdf.cpp
CMakeFiles/render.dir/bsdf.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/render.dir/bsdf.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/bsdf.cpp.o -MF CMakeFiles/render.dir/bsdf.cpp.o.d -o CMakeFiles/render.dir/bsdf.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/bsdf.cpp

CMakeFiles/render.dir/bsdf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/bsdf.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/bsdf.cpp > CMakeFiles/render.dir/bsdf.cpp.i

CMakeFiles/render.dir/bsdf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/bsdf.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/bsdf.cpp -o CMakeFiles/render.dir/bsdf.cpp.s

CMakeFiles/render.dir/camera.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/camera.cpp.o: ../camera.cpp
CMakeFiles/render.dir/camera.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/render.dir/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/camera.cpp.o -MF CMakeFiles/render.dir/camera.cpp.o.d -o CMakeFiles/render.dir/camera.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/camera.cpp

CMakeFiles/render.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/camera.cpp > CMakeFiles/render.dir/camera.cpp.i

CMakeFiles/render.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/camera.cpp -o CMakeFiles/render.dir/camera.cpp.s

CMakeFiles/render.dir/light.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/light.cpp.o: ../light.cpp
CMakeFiles/render.dir/light.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/render.dir/light.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/light.cpp.o -MF CMakeFiles/render.dir/light.cpp.o.d -o CMakeFiles/render.dir/light.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/light.cpp

CMakeFiles/render.dir/light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/light.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/light.cpp > CMakeFiles/render.dir/light.cpp.i

CMakeFiles/render.dir/light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/light.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/light.cpp -o CMakeFiles/render.dir/light.cpp.s

CMakeFiles/render.dir/scene.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/scene.cpp.o: ../scene.cpp
CMakeFiles/render.dir/scene.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/render.dir/scene.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/scene.cpp.o -MF CMakeFiles/render.dir/scene.cpp.o.d -o CMakeFiles/render.dir/scene.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/scene.cpp

CMakeFiles/render.dir/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/scene.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/scene.cpp > CMakeFiles/render.dir/scene.cpp.i

CMakeFiles/render.dir/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/scene.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/scene.cpp -o CMakeFiles/render.dir/scene.cpp.s

CMakeFiles/render.dir/surface.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/surface.cpp.o: ../surface.cpp
CMakeFiles/render.dir/surface.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/render.dir/surface.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/surface.cpp.o -MF CMakeFiles/render.dir/surface.cpp.o.d -o CMakeFiles/render.dir/surface.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/surface.cpp

CMakeFiles/render.dir/surface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/surface.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/surface.cpp > CMakeFiles/render.dir/surface.cpp.i

CMakeFiles/render.dir/surface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/surface.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/surface.cpp -o CMakeFiles/render.dir/surface.cpp.s

CMakeFiles/render.dir/texture.cpp.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/texture.cpp.o: ../texture.cpp
CMakeFiles/render.dir/texture.cpp.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/render.dir/texture.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/render.dir/texture.cpp.o -MF CMakeFiles/render.dir/texture.cpp.o.d -o CMakeFiles/render.dir/texture.cpp.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/texture.cpp

CMakeFiles/render.dir/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/render.dir/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/texture.cpp > CMakeFiles/render.dir/texture.cpp.i

CMakeFiles/render.dir/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/render.dir/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/texture.cpp -o CMakeFiles/render.dir/texture.cpp.s

CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o: CMakeFiles/render.dir/flags.make
CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o: ../extern/tinyexr/deps/miniz/miniz.c
CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o: CMakeFiles/render.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o -MF CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o.d -o CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o -c /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr/deps/miniz/miniz.c

CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr/deps/miniz/miniz.c > CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.i

CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/extern/tinyexr/deps/miniz/miniz.c -o CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.s

# Object files for target render
render_OBJECTS = \
"CMakeFiles/render.dir/render.cpp.o" \
"CMakeFiles/render.dir/bsdf.cpp.o" \
"CMakeFiles/render.dir/camera.cpp.o" \
"CMakeFiles/render.dir/light.cpp.o" \
"CMakeFiles/render.dir/scene.cpp.o" \
"CMakeFiles/render.dir/surface.cpp.o" \
"CMakeFiles/render.dir/texture.cpp.o" \
"CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o"

# External object files for target render
render_EXTERNAL_OBJECTS =

render: CMakeFiles/render.dir/render.cpp.o
render: CMakeFiles/render.dir/bsdf.cpp.o
render: CMakeFiles/render.dir/camera.cpp.o
render: CMakeFiles/render.dir/light.cpp.o
render: CMakeFiles/render.dir/scene.cpp.o
render: CMakeFiles/render.dir/surface.cpp.o
render: CMakeFiles/render.dir/texture.cpp.o
render: CMakeFiles/render.dir/extern/tinyexr/deps/miniz/miniz.c.o
render: CMakeFiles/render.dir/build.make
render: CMakeFiles/render.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable render"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/render.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/render.dir/build: render
.PHONY : CMakeFiles/render.dir/build

CMakeFiles/render.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/render.dir/cmake_clean.cmake
.PHONY : CMakeFiles/render.dir/clean

CMakeFiles/render.dir/depend:
	cd /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build /home/vaishnavi/Desktop/ASG3_CG/ASG_3/simple_renderer/build/CMakeFiles/render.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/render.dir/depend

