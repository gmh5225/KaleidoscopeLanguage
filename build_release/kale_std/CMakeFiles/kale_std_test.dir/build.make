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
CMAKE_SOURCE_DIR = /mnt/d/ClionProject/KaleidoscopeLanguage

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/ClionProject/KaleidoscopeLanguage/build_release

# Include any dependencies generated for this target.
include kale_std/CMakeFiles/kale_std_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include kale_std/CMakeFiles/kale_std_test.dir/compiler_depend.make

# Include the progress variables for this target.
include kale_std/CMakeFiles/kale_std_test.dir/progress.make

# Include the compile flags for this target's objects.
include kale_std/CMakeFiles/kale_std_test.dir/flags.make

kale_std/CMakeFiles/kale_std_test.dir/test.c.o: kale_std/CMakeFiles/kale_std_test.dir/flags.make
kale_std/CMakeFiles/kale_std_test.dir/test.c.o: ../kale_std/test.c
kale_std/CMakeFiles/kale_std_test.dir/test.c.o: kale_std/CMakeFiles/kale_std_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/ClionProject/KaleidoscopeLanguage/build_release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object kale_std/CMakeFiles/kale_std_test.dir/test.c.o"
	cd /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT kale_std/CMakeFiles/kale_std_test.dir/test.c.o -MF CMakeFiles/kale_std_test.dir/test.c.o.d -o CMakeFiles/kale_std_test.dir/test.c.o -c /mnt/d/ClionProject/KaleidoscopeLanguage/kale_std/test.c

kale_std/CMakeFiles/kale_std_test.dir/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kale_std_test.dir/test.c.i"
	cd /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/ClionProject/KaleidoscopeLanguage/kale_std/test.c > CMakeFiles/kale_std_test.dir/test.c.i

kale_std/CMakeFiles/kale_std_test.dir/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kale_std_test.dir/test.c.s"
	cd /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/ClionProject/KaleidoscopeLanguage/kale_std/test.c -o CMakeFiles/kale_std_test.dir/test.c.s

# Object files for target kale_std_test
kale_std_test_OBJECTS = \
"CMakeFiles/kale_std_test.dir/test.c.o"

# External object files for target kale_std_test
kale_std_test_EXTERNAL_OBJECTS =

bin/kale_std_test: kale_std/CMakeFiles/kale_std_test.dir/test.c.o
bin/kale_std_test: kale_std/CMakeFiles/kale_std_test.dir/build.make
bin/kale_std_test: lib/libkale_std.a
bin/kale_std_test: kale_std/CMakeFiles/kale_std_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/ClionProject/KaleidoscopeLanguage/build_release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/kale_std_test"
	cd /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kale_std_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kale_std/CMakeFiles/kale_std_test.dir/build: bin/kale_std_test
.PHONY : kale_std/CMakeFiles/kale_std_test.dir/build

kale_std/CMakeFiles/kale_std_test.dir/clean:
	cd /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std && $(CMAKE_COMMAND) -P CMakeFiles/kale_std_test.dir/cmake_clean.cmake
.PHONY : kale_std/CMakeFiles/kale_std_test.dir/clean

kale_std/CMakeFiles/kale_std_test.dir/depend:
	cd /mnt/d/ClionProject/KaleidoscopeLanguage/build_release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/ClionProject/KaleidoscopeLanguage /mnt/d/ClionProject/KaleidoscopeLanguage/kale_std /mnt/d/ClionProject/KaleidoscopeLanguage/build_release /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std /mnt/d/ClionProject/KaleidoscopeLanguage/build_release/kale_std/CMakeFiles/kale_std_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kale_std/CMakeFiles/kale_std_test.dir/depend
