# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yonghaolee/Documents/my_sfml_project_bonus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yonghaolee/Documents/my_sfml_project_bonus/build

# Include any dependencies generated for this target.
include CMakeFiles/my_sfml_project_bonus.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_sfml_project_bonus.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_sfml_project_bonus.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_sfml_project_bonus.dir/flags.make

CMakeFiles/my_sfml_project_bonus.dir/codegen:
.PHONY : CMakeFiles/my_sfml_project_bonus.dir/codegen

CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o: CMakeFiles/my_sfml_project_bonus.dir/flags.make
CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o: /Users/yonghaolee/Documents/my_sfml_project_bonus/main.cpp
CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o: CMakeFiles/my_sfml_project_bonus.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/yonghaolee/Documents/my_sfml_project_bonus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o -MF CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o.d -o CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o -c /Users/yonghaolee/Documents/my_sfml_project_bonus/main.cpp

CMakeFiles/my_sfml_project_bonus.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_sfml_project_bonus.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yonghaolee/Documents/my_sfml_project_bonus/main.cpp > CMakeFiles/my_sfml_project_bonus.dir/main.cpp.i

CMakeFiles/my_sfml_project_bonus.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_sfml_project_bonus.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yonghaolee/Documents/my_sfml_project_bonus/main.cpp -o CMakeFiles/my_sfml_project_bonus.dir/main.cpp.s

# Object files for target my_sfml_project_bonus
my_sfml_project_bonus_OBJECTS = \
"CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o"

# External object files for target my_sfml_project_bonus
my_sfml_project_bonus_EXTERNAL_OBJECTS =

my_sfml_project_bonus: CMakeFiles/my_sfml_project_bonus.dir/main.cpp.o
my_sfml_project_bonus: CMakeFiles/my_sfml_project_bonus.dir/build.make
my_sfml_project_bonus: /opt/homebrew/opt/sfml@2/lib/libsfml-graphics.2.6.2.dylib
my_sfml_project_bonus: /opt/homebrew/opt/sfml@2/lib/libsfml-window.2.6.2.dylib
my_sfml_project_bonus: /opt/homebrew/opt/sfml@2/lib/libsfml-system.2.6.2.dylib
my_sfml_project_bonus: CMakeFiles/my_sfml_project_bonus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/yonghaolee/Documents/my_sfml_project_bonus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my_sfml_project_bonus"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_sfml_project_bonus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_sfml_project_bonus.dir/build: my_sfml_project_bonus
.PHONY : CMakeFiles/my_sfml_project_bonus.dir/build

CMakeFiles/my_sfml_project_bonus.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_sfml_project_bonus.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_sfml_project_bonus.dir/clean

CMakeFiles/my_sfml_project_bonus.dir/depend:
	cd /Users/yonghaolee/Documents/my_sfml_project_bonus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yonghaolee/Documents/my_sfml_project_bonus /Users/yonghaolee/Documents/my_sfml_project_bonus /Users/yonghaolee/Documents/my_sfml_project_bonus/build /Users/yonghaolee/Documents/my_sfml_project_bonus/build /Users/yonghaolee/Documents/my_sfml_project_bonus/build/CMakeFiles/my_sfml_project_bonus.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/my_sfml_project_bonus.dir/depend

