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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/testtt/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/testtt/build

# Include any dependencies generated for this target.
include trial/CMakeFiles/add_two_ints_servers.dir/depend.make

# Include the progress variables for this target.
include trial/CMakeFiles/add_two_ints_servers.dir/progress.make

# Include the compile flags for this target's objects.
include trial/CMakeFiles/add_two_ints_servers.dir/flags.make

trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o: trial/CMakeFiles/add_two_ints_servers.dir/flags.make
trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o: /home/ubuntu/testtt/src/trial/src/nodes/add_two_ints_servers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/testtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o"
	cd /home/ubuntu/testtt/build/trial && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o -c /home/ubuntu/testtt/src/trial/src/nodes/add_two_ints_servers.cpp

trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.i"
	cd /home/ubuntu/testtt/build/trial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/testtt/src/trial/src/nodes/add_two_ints_servers.cpp > CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.i

trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.s"
	cd /home/ubuntu/testtt/build/trial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/testtt/src/trial/src/nodes/add_two_ints_servers.cpp -o CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.s

trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.requires:

.PHONY : trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.requires

trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.provides: trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.requires
	$(MAKE) -f trial/CMakeFiles/add_two_ints_servers.dir/build.make trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.provides.build
.PHONY : trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.provides

trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.provides.build: trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o


# Object files for target add_two_ints_servers
add_two_ints_servers_OBJECTS = \
"CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o"

# External object files for target add_two_ints_servers
add_two_ints_servers_EXTERNAL_OBJECTS =

/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: trial/CMakeFiles/add_two_ints_servers.dir/build.make
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libcv_bridge.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/aarch64-linux-gnu/libopencv_core3.so.3.3.1
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/aarch64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/aarch64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libimage_transport.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libmessage_filters.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libclass_loader.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/libPocoFoundation.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libdl.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libroslib.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/librospack.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libtinyxml.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libroscpp.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/librosconsole.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/librostime.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /opt/ros/kinetic/lib/libcpp_common.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so
/home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers: trial/CMakeFiles/add_two_ints_servers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/testtt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers"
	cd /home/ubuntu/testtt/build/trial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/add_two_ints_servers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
trial/CMakeFiles/add_two_ints_servers.dir/build: /home/ubuntu/testtt/devel/lib/trial/add_two_ints_servers

.PHONY : trial/CMakeFiles/add_two_ints_servers.dir/build

trial/CMakeFiles/add_two_ints_servers.dir/requires: trial/CMakeFiles/add_two_ints_servers.dir/src/nodes/add_two_ints_servers.cpp.o.requires

.PHONY : trial/CMakeFiles/add_two_ints_servers.dir/requires

trial/CMakeFiles/add_two_ints_servers.dir/clean:
	cd /home/ubuntu/testtt/build/trial && $(CMAKE_COMMAND) -P CMakeFiles/add_two_ints_servers.dir/cmake_clean.cmake
.PHONY : trial/CMakeFiles/add_two_ints_servers.dir/clean

trial/CMakeFiles/add_two_ints_servers.dir/depend:
	cd /home/ubuntu/testtt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/testtt/src /home/ubuntu/testtt/src/trial /home/ubuntu/testtt/build /home/ubuntu/testtt/build/trial /home/ubuntu/testtt/build/trial/CMakeFiles/add_two_ints_servers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : trial/CMakeFiles/add_two_ints_servers.dir/depend

