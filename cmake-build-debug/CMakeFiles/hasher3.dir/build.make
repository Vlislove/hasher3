# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Vlad\CLionProjects\hasher3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Vlad\CLionProjects\hasher3\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hasher3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hasher3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hasher3.dir/flags.make

CMakeFiles/hasher3.dir/src/main.cpp.obj: CMakeFiles/hasher3.dir/flags.make
CMakeFiles/hasher3.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Vlad\CLionProjects\hasher3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hasher3.dir/src/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\hasher3.dir\src\main.cpp.obj -c C:\Users\Vlad\CLionProjects\hasher3\src\main.cpp

CMakeFiles/hasher3.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hasher3.dir/src/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Vlad\CLionProjects\hasher3\src\main.cpp > CMakeFiles\hasher3.dir\src\main.cpp.i

CMakeFiles/hasher3.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hasher3.dir/src/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Vlad\CLionProjects\hasher3\src\main.cpp -o CMakeFiles\hasher3.dir\src\main.cpp.s

CMakeFiles/hasher3.dir/src/main.cpp.obj.requires:

.PHONY : CMakeFiles/hasher3.dir/src/main.cpp.obj.requires

CMakeFiles/hasher3.dir/src/main.cpp.obj.provides: CMakeFiles/hasher3.dir/src/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\hasher3.dir\build.make CMakeFiles/hasher3.dir/src/main.cpp.obj.provides.build
.PHONY : CMakeFiles/hasher3.dir/src/main.cpp.obj.provides

CMakeFiles/hasher3.dir/src/main.cpp.obj.provides.build: CMakeFiles/hasher3.dir/src/main.cpp.obj


# Object files for target hasher3
hasher3_OBJECTS = \
"CMakeFiles/hasher3.dir/src/main.cpp.obj"

# External object files for target hasher3
hasher3_EXTERNAL_OBJECTS =

hasher3.exe: CMakeFiles/hasher3.dir/src/main.cpp.obj
hasher3.exe: CMakeFiles/hasher3.dir/build.make
hasher3.exe: libhasherlib.a
hasher3.exe: CMakeFiles/hasher3.dir/linklibs.rsp
hasher3.exe: CMakeFiles/hasher3.dir/objects1.rsp
hasher3.exe: CMakeFiles/hasher3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Vlad\CLionProjects\hasher3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hasher3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\hasher3.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hasher3.dir/build: hasher3.exe

.PHONY : CMakeFiles/hasher3.dir/build

CMakeFiles/hasher3.dir/requires: CMakeFiles/hasher3.dir/src/main.cpp.obj.requires

.PHONY : CMakeFiles/hasher3.dir/requires

CMakeFiles/hasher3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\hasher3.dir\cmake_clean.cmake
.PHONY : CMakeFiles/hasher3.dir/clean

CMakeFiles/hasher3.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Vlad\CLionProjects\hasher3 C:\Users\Vlad\CLionProjects\hasher3 C:\Users\Vlad\CLionProjects\hasher3\cmake-build-debug C:\Users\Vlad\CLionProjects\hasher3\cmake-build-debug C:\Users\Vlad\CLionProjects\hasher3\cmake-build-debug\CMakeFiles\hasher3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hasher3.dir/depend
