# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/git/PACE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/git/PACE/build

# Include any dependencies generated for this target.
include cmd/CMakeFiles/PupilTrackerCmd.dir/depend.make

# Include the progress variables for this target.
include cmd/CMakeFiles/PupilTrackerCmd.dir/progress.make

# Include the compile flags for this target's objects.
include cmd/CMakeFiles/PupilTrackerCmd.dir/flags.make

cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o: cmd/CMakeFiles/PupilTrackerCmd.dir/flags.make
cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o: ../cmd/PupilTrackerCmd.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/PACE/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o"
	cd /home/git/PACE/build/cmd && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o -c /home/git/PACE/cmd/PupilTrackerCmd.cpp

cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.i"
	cd /home/git/PACE/build/cmd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/PACE/cmd/PupilTrackerCmd.cpp > CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.i

cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.s"
	cd /home/git/PACE/build/cmd && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/PACE/cmd/PupilTrackerCmd.cpp -o CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.s

cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.requires:
.PHONY : cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.requires

cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.provides: cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.requires
	$(MAKE) -f cmd/CMakeFiles/PupilTrackerCmd.dir/build.make cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.provides.build
.PHONY : cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.provides

cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.provides.build: cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o

# Object files for target PupilTrackerCmd
PupilTrackerCmd_OBJECTS = \
"CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o"

# External object files for target PupilTrackerCmd
PupilTrackerCmd_EXTERNAL_OBJECTS =

cmd/PupilTrackerCmd: cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o
cmd/PupilTrackerCmd: cmd/CMakeFiles/PupilTrackerCmd.dir/build.make
cmd/PupilTrackerCmd: lib/libpupiltracker.a
cmd/PupilTrackerCmd: cmd/dlib_build/libdlib.a
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_viz.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_videostab.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_video.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_ts.a
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_superres.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_stitching.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_photo.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_ocl.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_objdetect.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_nonfree.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_ml.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_legacy.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_imgproc.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_highgui.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_gpu.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_flann.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_features2d.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_core.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_contrib.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_calib3d.so.2.4.9
cmd/PupilTrackerCmd: /usr/lib/libtbb.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libpthread.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libnsl.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libpng.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libjpeg.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libGLU.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libGL.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libSM.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libICE.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libX11.so
cmd/PupilTrackerCmd: /usr/lib/x86_64-linux-gnu/libXext.so
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_nonfree.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_ocl.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_gpu.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_photo.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_objdetect.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_legacy.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_video.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_ml.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_calib3d.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_features2d.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_highgui.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_imgproc.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_flann.so.2.4.9
cmd/PupilTrackerCmd: /usr/local/lib/libopencv_core.so.2.4.9
cmd/PupilTrackerCmd: cmd/CMakeFiles/PupilTrackerCmd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable PupilTrackerCmd"
	cd /home/git/PACE/build/cmd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PupilTrackerCmd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cmd/CMakeFiles/PupilTrackerCmd.dir/build: cmd/PupilTrackerCmd
.PHONY : cmd/CMakeFiles/PupilTrackerCmd.dir/build

cmd/CMakeFiles/PupilTrackerCmd.dir/requires: cmd/CMakeFiles/PupilTrackerCmd.dir/PupilTrackerCmd.cpp.o.requires
.PHONY : cmd/CMakeFiles/PupilTrackerCmd.dir/requires

cmd/CMakeFiles/PupilTrackerCmd.dir/clean:
	cd /home/git/PACE/build/cmd && $(CMAKE_COMMAND) -P CMakeFiles/PupilTrackerCmd.dir/cmake_clean.cmake
.PHONY : cmd/CMakeFiles/PupilTrackerCmd.dir/clean

cmd/CMakeFiles/PupilTrackerCmd.dir/depend:
	cd /home/git/PACE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/git/PACE /home/git/PACE/cmd /home/git/PACE/build /home/git/PACE/build/cmd /home/git/PACE/build/cmd/CMakeFiles/PupilTrackerCmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cmd/CMakeFiles/PupilTrackerCmd.dir/depend
