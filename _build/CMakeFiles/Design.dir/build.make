# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mihailerosenko/Desktop/RK2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mihailerosenko/Desktop/RK2/_build

# Include any dependencies generated for this target.
include CMakeFiles/Design.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Design.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Design.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Design.dir/flags.make

CMakeFiles/Design.dir/main-2.cpp.o: CMakeFiles/Design.dir/flags.make
CMakeFiles/Design.dir/main-2.cpp.o: /Users/mihailerosenko/Desktop/RK2/main-2.cpp
CMakeFiles/Design.dir/main-2.cpp.o: CMakeFiles/Design.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mihailerosenko/Desktop/RK2/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Design.dir/main-2.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Design.dir/main-2.cpp.o -MF CMakeFiles/Design.dir/main-2.cpp.o.d -o CMakeFiles/Design.dir/main-2.cpp.o -c /Users/mihailerosenko/Desktop/RK2/main-2.cpp

CMakeFiles/Design.dir/main-2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Design.dir/main-2.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mihailerosenko/Desktop/RK2/main-2.cpp > CMakeFiles/Design.dir/main-2.cpp.i

CMakeFiles/Design.dir/main-2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Design.dir/main-2.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mihailerosenko/Desktop/RK2/main-2.cpp -o CMakeFiles/Design.dir/main-2.cpp.s

# Object files for target Design
Design_OBJECTS = \
"CMakeFiles/Design.dir/main-2.cpp.o"

# External object files for target Design
Design_EXTERNAL_OBJECTS =

Design: CMakeFiles/Design.dir/main-2.cpp.o
Design: CMakeFiles/Design.dir/build.make
Design: CMakeFiles/Design.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mihailerosenko/Desktop/RK2/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Design"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Design.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Design.dir/build: Design
.PHONY : CMakeFiles/Design.dir/build

CMakeFiles/Design.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Design.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Design.dir/clean

CMakeFiles/Design.dir/depend:
	cd /Users/mihailerosenko/Desktop/RK2/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mihailerosenko/Desktop/RK2 /Users/mihailerosenko/Desktop/RK2 /Users/mihailerosenko/Desktop/RK2/_build /Users/mihailerosenko/Desktop/RK2/_build /Users/mihailerosenko/Desktop/RK2/_build/CMakeFiles/Design.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Design.dir/depend

