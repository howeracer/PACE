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
include lib/CMakeFiles/pupiltracker.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/pupiltracker.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/pupiltracker.dir/flags.make

lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o: lib/CMakeFiles/pupiltracker.dir/flags.make
lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o: ../lib/PupilTracker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/PACE/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o"
	cd /home/git/PACE/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o -c /home/git/PACE/lib/PupilTracker.cpp

lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pupiltracker.dir/PupilTracker.cpp.i"
	cd /home/git/PACE/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/PACE/lib/PupilTracker.cpp > CMakeFiles/pupiltracker.dir/PupilTracker.cpp.i

lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pupiltracker.dir/PupilTracker.cpp.s"
	cd /home/git/PACE/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/PACE/lib/PupilTracker.cpp -o CMakeFiles/pupiltracker.dir/PupilTracker.cpp.s

lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.requires:
.PHONY : lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.requires

lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.provides: lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pupiltracker.dir/build.make lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.provides

lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.provides.build: lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o

lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o: lib/CMakeFiles/pupiltracker.dir/flags.make
lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o: ../lib/cvx.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/PACE/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o"
	cd /home/git/PACE/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pupiltracker.dir/cvx.cpp.o -c /home/git/PACE/lib/cvx.cpp

lib/CMakeFiles/pupiltracker.dir/cvx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pupiltracker.dir/cvx.cpp.i"
	cd /home/git/PACE/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/PACE/lib/cvx.cpp > CMakeFiles/pupiltracker.dir/cvx.cpp.i

lib/CMakeFiles/pupiltracker.dir/cvx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pupiltracker.dir/cvx.cpp.s"
	cd /home/git/PACE/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/PACE/lib/cvx.cpp -o CMakeFiles/pupiltracker.dir/cvx.cpp.s

lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.requires:
.PHONY : lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.requires

lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.provides: lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pupiltracker.dir/build.make lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.provides

lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.provides.build: lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o

lib/CMakeFiles/pupiltracker.dir/utils.cpp.o: lib/CMakeFiles/pupiltracker.dir/flags.make
lib/CMakeFiles/pupiltracker.dir/utils.cpp.o: ../lib/utils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/PACE/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/pupiltracker.dir/utils.cpp.o"
	cd /home/git/PACE/build/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/pupiltracker.dir/utils.cpp.o -c /home/git/PACE/lib/utils.cpp

lib/CMakeFiles/pupiltracker.dir/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pupiltracker.dir/utils.cpp.i"
	cd /home/git/PACE/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/PACE/lib/utils.cpp > CMakeFiles/pupiltracker.dir/utils.cpp.i

lib/CMakeFiles/pupiltracker.dir/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pupiltracker.dir/utils.cpp.s"
	cd /home/git/PACE/build/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/PACE/lib/utils.cpp -o CMakeFiles/pupiltracker.dir/utils.cpp.s

lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.requires:
.PHONY : lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.requires

lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.provides: lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.requires
	$(MAKE) -f lib/CMakeFiles/pupiltracker.dir/build.make lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.provides.build
.PHONY : lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.provides

lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.provides.build: lib/CMakeFiles/pupiltracker.dir/utils.cpp.o

# Object files for target pupiltracker
pupiltracker_OBJECTS = \
"CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o" \
"CMakeFiles/pupiltracker.dir/cvx.cpp.o" \
"CMakeFiles/pupiltracker.dir/utils.cpp.o"

# External object files for target pupiltracker
pupiltracker_EXTERNAL_OBJECTS =

lib/libpupiltracker.a: lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o
lib/libpupiltracker.a: lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o
lib/libpupiltracker.a: lib/CMakeFiles/pupiltracker.dir/utils.cpp.o
lib/libpupiltracker.a: lib/CMakeFiles/pupiltracker.dir/build.make
lib/libpupiltracker.a: lib/CMakeFiles/pupiltracker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libpupiltracker.a"
	cd /home/git/PACE/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/pupiltracker.dir/cmake_clean_target.cmake
	cd /home/git/PACE/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pupiltracker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/pupiltracker.dir/build: lib/libpupiltracker.a
.PHONY : lib/CMakeFiles/pupiltracker.dir/build

lib/CMakeFiles/pupiltracker.dir/requires: lib/CMakeFiles/pupiltracker.dir/PupilTracker.cpp.o.requires
lib/CMakeFiles/pupiltracker.dir/requires: lib/CMakeFiles/pupiltracker.dir/cvx.cpp.o.requires
lib/CMakeFiles/pupiltracker.dir/requires: lib/CMakeFiles/pupiltracker.dir/utils.cpp.o.requires
.PHONY : lib/CMakeFiles/pupiltracker.dir/requires

lib/CMakeFiles/pupiltracker.dir/clean:
	cd /home/git/PACE/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/pupiltracker.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/pupiltracker.dir/clean

lib/CMakeFiles/pupiltracker.dir/depend:
	cd /home/git/PACE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/git/PACE /home/git/PACE/lib /home/git/PACE/build /home/git/PACE/build/lib /home/git/PACE/build/lib/CMakeFiles/pupiltracker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/pupiltracker.dir/depend

