# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/netlib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/netlib

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /root/netlib/CMakeFiles /root/netlib/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /root/netlib/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named netlib

# Build rule for target.
netlib: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 netlib
.PHONY : netlib

# fast build rule for target.
netlib/fast:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/build
.PHONY : netlib/fast

# target to build an object file
BaseSocket.o:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/BaseSocket.o
.PHONY : BaseSocket.o

# target to preprocess a source file
BaseSocket.i:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/BaseSocket.i
.PHONY : BaseSocket.i

# target to generate assembly for a file
BaseSocket.s:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/BaseSocket.s
.PHONY : BaseSocket.s

# target to build an object file
EventDispatch.o:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/EventDispatch.o
.PHONY : EventDispatch.o

# target to preprocess a source file
EventDispatch.i:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/EventDispatch.i
.PHONY : EventDispatch.i

# target to generate assembly for a file
EventDispatch.s:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/EventDispatch.s
.PHONY : EventDispatch.s

# target to build an object file
Lock.o:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Lock.o
.PHONY : Lock.o

# target to preprocess a source file
Lock.i:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Lock.i
.PHONY : Lock.i

# target to generate assembly for a file
Lock.s:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Lock.s
.PHONY : Lock.s

# target to build an object file
Netlib.o:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Netlib.o
.PHONY : Netlib.o

# target to preprocess a source file
Netlib.i:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Netlib.i
.PHONY : Netlib.i

# target to generate assembly for a file
Netlib.s:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Netlib.s
.PHONY : Netlib.s

# target to build an object file
Netlib_Test.o:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Netlib_Test.o
.PHONY : Netlib_Test.o

# target to preprocess a source file
Netlib_Test.i:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Netlib_Test.i
.PHONY : Netlib_Test.i

# target to generate assembly for a file
Netlib_Test.s:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Netlib_Test.s
.PHONY : Netlib_Test.s

# target to build an object file
Util.o:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Util.o
.PHONY : Util.o

# target to preprocess a source file
Util.i:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Util.i
.PHONY : Util.i

# target to generate assembly for a file
Util.s:
	$(MAKE) -f CMakeFiles/netlib.dir/build.make CMakeFiles/netlib.dir/Util.s
.PHONY : Util.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... netlib"
	@echo "... rebuild_cache"
	@echo "... BaseSocket.o"
	@echo "... BaseSocket.i"
	@echo "... BaseSocket.s"
	@echo "... EventDispatch.o"
	@echo "... EventDispatch.i"
	@echo "... EventDispatch.s"
	@echo "... Lock.o"
	@echo "... Lock.i"
	@echo "... Lock.s"
	@echo "... Netlib.o"
	@echo "... Netlib.i"
	@echo "... Netlib.s"
	@echo "... Netlib_Test.o"
	@echo "... Netlib_Test.i"
	@echo "... Netlib_Test.s"
	@echo "... Util.o"
	@echo "... Util.i"
	@echo "... Util.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
