# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/awad1080/Desktop/ngimu_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/awad1080/Desktop/ngimu_ws/build

# Include any dependencies generated for this target.
include ngimu/CMakeFiles/NGIMU.dir/depend.make

# Include the progress variables for this target.
include ngimu/CMakeFiles/NGIMU.dir/progress.make

# Include the compile flags for this target's objects.
include ngimu/CMakeFiles/NGIMU.dir/flags.make

ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o: ngimu/CMakeFiles/NGIMU.dir/flags.make
ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o: /home/awad1080/Desktop/ngimu_ws/src/ngimu/src/ngimu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/awad1080/Desktop/ngimu_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o"
	cd /home/awad1080/Desktop/ngimu_ws/build/ngimu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NGIMU.dir/src/ngimu.cpp.o -c /home/awad1080/Desktop/ngimu_ws/src/ngimu/src/ngimu.cpp

ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NGIMU.dir/src/ngimu.cpp.i"
	cd /home/awad1080/Desktop/ngimu_ws/build/ngimu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/awad1080/Desktop/ngimu_ws/src/ngimu/src/ngimu.cpp > CMakeFiles/NGIMU.dir/src/ngimu.cpp.i

ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NGIMU.dir/src/ngimu.cpp.s"
	cd /home/awad1080/Desktop/ngimu_ws/build/ngimu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/awad1080/Desktop/ngimu_ws/src/ngimu/src/ngimu.cpp -o CMakeFiles/NGIMU.dir/src/ngimu.cpp.s

ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.requires:

.PHONY : ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.requires

ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.provides: ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.requires
	$(MAKE) -f ngimu/CMakeFiles/NGIMU.dir/build.make ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.provides.build
.PHONY : ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.provides

ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.provides.build: ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o


# Object files for target NGIMU
NGIMU_OBJECTS = \
"CMakeFiles/NGIMU.dir/src/ngimu.cpp.o"

# External object files for target NGIMU
NGIMU_EXTERNAL_OBJECTS =

/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: ngimu/CMakeFiles/NGIMU.dir/build.make
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/libroscpp.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/librosconsole.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/librostime.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /opt/ros/melodic/lib/libcpp_common.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /home/awad1080/Desktop/ngimu_ws/devel/lib/libserial.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/librt.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /home/awad1080/Desktop/ngimu_ws/devel/lib/libNgimuReceive.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: /home/awad1080/Desktop/ngimu_ws/devel/lib/libOsc99.so
/home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU: ngimu/CMakeFiles/NGIMU.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/awad1080/Desktop/ngimu_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU"
	cd /home/awad1080/Desktop/ngimu_ws/build/ngimu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NGIMU.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ngimu/CMakeFiles/NGIMU.dir/build: /home/awad1080/Desktop/ngimu_ws/devel/lib/ngimu/NGIMU

.PHONY : ngimu/CMakeFiles/NGIMU.dir/build

ngimu/CMakeFiles/NGIMU.dir/requires: ngimu/CMakeFiles/NGIMU.dir/src/ngimu.cpp.o.requires

.PHONY : ngimu/CMakeFiles/NGIMU.dir/requires

ngimu/CMakeFiles/NGIMU.dir/clean:
	cd /home/awad1080/Desktop/ngimu_ws/build/ngimu && $(CMAKE_COMMAND) -P CMakeFiles/NGIMU.dir/cmake_clean.cmake
.PHONY : ngimu/CMakeFiles/NGIMU.dir/clean

ngimu/CMakeFiles/NGIMU.dir/depend:
	cd /home/awad1080/Desktop/ngimu_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/awad1080/Desktop/ngimu_ws/src /home/awad1080/Desktop/ngimu_ws/src/ngimu /home/awad1080/Desktop/ngimu_ws/build /home/awad1080/Desktop/ngimu_ws/build/ngimu /home/awad1080/Desktop/ngimu_ws/build/ngimu/CMakeFiles/NGIMU.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ngimu/CMakeFiles/NGIMU.dir/depend

