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
CMAKE_SOURCE_DIR = /home/lucrezia/sofar_ws/src/rosjava/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lucrezia/sofar_ws/src/rosjava/build

# Utility rule file for gradle-clean-zeroconf_jmdns_suite.

# Include the progress variables for this target.
include zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/progress.make

zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lucrezia/sofar_ws/src/rosjava/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Cleaning gradle project for zeroconf_jmdns_suite"
	cd /home/lucrezia/sofar_ws/src/rosjava/src/zeroconf_jmdns_suite && /home/lucrezia/sofar_ws/src/rosjava/build/catkin_generated/env_cached.sh /home/lucrezia/sofar_ws/src/rosjava/src/zeroconf_jmdns_suite/gradlew clean

gradle-clean-zeroconf_jmdns_suite: zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite
gradle-clean-zeroconf_jmdns_suite: zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/build.make

.PHONY : gradle-clean-zeroconf_jmdns_suite

# Rule to build all files generated by this target.
zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/build: gradle-clean-zeroconf_jmdns_suite

.PHONY : zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/build

zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/clean:
	cd /home/lucrezia/sofar_ws/src/rosjava/build/zeroconf_jmdns_suite && $(CMAKE_COMMAND) -P CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/cmake_clean.cmake
.PHONY : zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/clean

zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/depend:
	cd /home/lucrezia/sofar_ws/src/rosjava/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lucrezia/sofar_ws/src/rosjava/src /home/lucrezia/sofar_ws/src/rosjava/src/zeroconf_jmdns_suite /home/lucrezia/sofar_ws/src/rosjava/build /home/lucrezia/sofar_ws/src/rosjava/build/zeroconf_jmdns_suite /home/lucrezia/sofar_ws/src/rosjava/build/zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : zeroconf_jmdns_suite/CMakeFiles/gradle-clean-zeroconf_jmdns_suite.dir/depend

