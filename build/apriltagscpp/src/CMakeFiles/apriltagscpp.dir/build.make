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
CMAKE_SOURCE_DIR = /home/jin/ros/apriltag_size/src/apriltags-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jin/ros/apriltag_size/build/apriltagscpp

# Include any dependencies generated for this target.
include src/CMakeFiles/apriltagscpp.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/apriltagscpp.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/apriltagscpp.dir/flags.make

src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/CameraUtil.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/CameraUtil.cpp

src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/CameraUtil.cpp > CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.i

src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/CameraUtil.cpp -o CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.s

src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o

src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/DebugImage.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/DebugImage.cpp

src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/DebugImage.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/DebugImage.cpp > CMakeFiles/apriltagscpp.dir/DebugImage.cpp.i

src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/DebugImage.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/DebugImage.cpp -o CMakeFiles/apriltagscpp.dir/DebugImage.cpp.s

src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o

src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Geometry.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/Geometry.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Geometry.cpp

src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/Geometry.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Geometry.cpp > CMakeFiles/apriltagscpp.dir/Geometry.cpp.i

src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/Geometry.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Geometry.cpp -o CMakeFiles/apriltagscpp.dir/Geometry.cpp.s

src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o

src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/GrayModel.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/GrayModel.cpp

src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/GrayModel.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/GrayModel.cpp > CMakeFiles/apriltagscpp.dir/GrayModel.cpp.i

src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/GrayModel.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/GrayModel.cpp -o CMakeFiles/apriltagscpp.dir/GrayModel.cpp.s

src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o

src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/MathUtil.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/MathUtil.cpp

src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/MathUtil.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/MathUtil.cpp > CMakeFiles/apriltagscpp.dir/MathUtil.cpp.i

src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/MathUtil.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/MathUtil.cpp -o CMakeFiles/apriltagscpp.dir/MathUtil.cpp.s

src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o

src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Refine.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/Refine.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Refine.cpp

src/CMakeFiles/apriltagscpp.dir/Refine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/Refine.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Refine.cpp > CMakeFiles/apriltagscpp.dir/Refine.cpp.i

src/CMakeFiles/apriltagscpp.dir/Refine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/Refine.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/Refine.cpp -o CMakeFiles/apriltagscpp.dir/Refine.cpp.s

src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o

src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagDetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagDetector.cpp

src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/TagDetector.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagDetector.cpp > CMakeFiles/apriltagscpp.dir/TagDetector.cpp.i

src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/TagDetector.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagDetector.cpp -o CMakeFiles/apriltagscpp.dir/TagDetector.cpp.s

src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o

src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamily.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamily.cpp

src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/TagFamily.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamily.cpp > CMakeFiles/apriltagscpp.dir/TagFamily.cpp.i

src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/TagFamily.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamily.cpp -o CMakeFiles/apriltagscpp.dir/TagFamily.cpp.s

src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o

src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamilies.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamilies.cpp

src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamilies.cpp > CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.i

src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/TagFamilies.cpp -o CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.s

src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o

src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o: src/CMakeFiles/apriltagscpp.dir/flags.make
src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o: /home/jin/ros/apriltag_size/src/apriltags-cpp/src/UnionFindSimple.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jin/ros/apriltag_size/build/apriltagscpp/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o -c /home/jin/ros/apriltag_size/src/apriltags-cpp/src/UnionFindSimple.cpp

src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.i"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jin/ros/apriltag_size/src/apriltags-cpp/src/UnionFindSimple.cpp > CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.i

src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.s"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jin/ros/apriltag_size/src/apriltags-cpp/src/UnionFindSimple.cpp -o CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.s

src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.requires:
.PHONY : src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.requires

src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.provides: src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/apriltagscpp.dir/build.make src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.provides.build
.PHONY : src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.provides

src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.provides.build: src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o

# Object files for target apriltagscpp
apriltagscpp_OBJECTS = \
"CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o" \
"CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o" \
"CMakeFiles/apriltagscpp.dir/Geometry.cpp.o" \
"CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o" \
"CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o" \
"CMakeFiles/apriltagscpp.dir/Refine.cpp.o" \
"CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o" \
"CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o" \
"CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o" \
"CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o"

# External object files for target apriltagscpp
apriltagscpp_EXTERNAL_OBJECTS =

libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/build.make
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libmpfr.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libgmp.so
libapriltagscpp.so: /usr/lib/libCGAL.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libpthread.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_ts.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so
libapriltagscpp.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so
libapriltagscpp.so: src/CMakeFiles/apriltagscpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../libapriltagscpp.so"
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/apriltagscpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/apriltagscpp.dir/build: libapriltagscpp.so
.PHONY : src/CMakeFiles/apriltagscpp.dir/build

src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/CameraUtil.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/DebugImage.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/Geometry.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/GrayModel.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/MathUtil.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/Refine.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/TagDetector.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/TagFamily.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/TagFamilies.cpp.o.requires
src/CMakeFiles/apriltagscpp.dir/requires: src/CMakeFiles/apriltagscpp.dir/UnionFindSimple.cpp.o.requires
.PHONY : src/CMakeFiles/apriltagscpp.dir/requires

src/CMakeFiles/apriltagscpp.dir/clean:
	cd /home/jin/ros/apriltag_size/build/apriltagscpp/src && $(CMAKE_COMMAND) -P CMakeFiles/apriltagscpp.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/apriltagscpp.dir/clean

src/CMakeFiles/apriltagscpp.dir/depend:
	cd /home/jin/ros/apriltag_size/build/apriltagscpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jin/ros/apriltag_size/src/apriltags-cpp /home/jin/ros/apriltag_size/src/apriltags-cpp/src /home/jin/ros/apriltag_size/build/apriltagscpp /home/jin/ros/apriltag_size/build/apriltagscpp/src /home/jin/ros/apriltag_size/build/apriltagscpp/src/CMakeFiles/apriltagscpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/apriltagscpp.dir/depend

