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
CMAKE_SOURCE_DIR = /home/pms3620/cFS_COSMOS/cFS/cfe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pms3620/cFS_COSMOS/cFS/build

# Utility rule file for cfe-usersguide.

# Include any custom commands dependencies for this target.
include CMakeFiles/cfe-usersguide.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cfe-usersguide.dir/progress.make

CMakeFiles/cfe-usersguide:
	cd /home/pms3620/cFS_COSMOS/cFS/build/doc && doxygen cfe-usersguide.doxyfile

cfe-usersguide: CMakeFiles/cfe-usersguide
cfe-usersguide: CMakeFiles/cfe-usersguide.dir/build.make
.PHONY : cfe-usersguide

# Rule to build all files generated by this target.
CMakeFiles/cfe-usersguide.dir/build: cfe-usersguide
.PHONY : CMakeFiles/cfe-usersguide.dir/build

CMakeFiles/cfe-usersguide.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cfe-usersguide.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cfe-usersguide.dir/clean

CMakeFiles/cfe-usersguide.dir/depend:
	cd /home/pms3620/cFS_COSMOS/cFS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pms3620/cFS_COSMOS/cFS/cfe /home/pms3620/cFS_COSMOS/cFS/cfe /home/pms3620/cFS_COSMOS/cFS/build /home/pms3620/cFS_COSMOS/cFS/build /home/pms3620/cFS_COSMOS/cFS/build/CMakeFiles/cfe-usersguide.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cfe-usersguide.dir/depend

