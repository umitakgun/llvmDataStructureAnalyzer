# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/umit/research/llvmDataStructureAnalyzer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/umit/research/llvmDataStructureAnalyzer/build

# Include any dependencies generated for this target.
include DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/depend.make

# Include the progress variables for this target.
include DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/progress.make

# Include the compile flags for this target's objects.
include DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/flags.make

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/flags.make
DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o: ../DataStructureAnalyzer/CGAnalyzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/umit/research/llvmDataStructureAnalyzer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && /Users/umit/research/llvm/build/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o -c /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer/CGAnalyzer.cpp

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.i"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && /Users/umit/research/llvm/build/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer/CGAnalyzer.cpp > CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.i

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.s"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && /Users/umit/research/llvm/build/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer/CGAnalyzer.cpp -o CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.s

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.requires:

.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.requires

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.provides: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.requires
	$(MAKE) -f DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/build.make DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.provides.build
.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.provides

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.provides.build: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o


DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/flags.make
DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o: ../DataStructureAnalyzer/DataStructureAnalyzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/umit/research/llvmDataStructureAnalyzer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && /Users/umit/research/llvm/build/bin/clang++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o -c /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer/DataStructureAnalyzer.cpp

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.i"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && /Users/umit/research/llvm/build/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer/DataStructureAnalyzer.cpp > CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.i

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.s"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && /Users/umit/research/llvm/build/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer/DataStructureAnalyzer.cpp -o CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.s

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.requires:

.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.requires

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.provides: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.requires
	$(MAKE) -f DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/build.make DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.provides.build
.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.provides

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.provides.build: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o


# Object files for target DataStructureAnalyzerPass
DataStructureAnalyzerPass_OBJECTS = \
"CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o" \
"CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o"

# External object files for target DataStructureAnalyzerPass
DataStructureAnalyzerPass_EXTERNAL_OBJECTS =

DataStructureAnalyzer/libDataStructureAnalyzerPass.so: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o
DataStructureAnalyzer/libDataStructureAnalyzerPass.so: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o
DataStructureAnalyzer/libDataStructureAnalyzerPass.so: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/build.make
DataStructureAnalyzer/libDataStructureAnalyzerPass.so: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/umit/research/llvmDataStructureAnalyzer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared module libDataStructureAnalyzerPass.so"
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DataStructureAnalyzerPass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/build: DataStructureAnalyzer/libDataStructureAnalyzerPass.so

.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/build

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/requires: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/CGAnalyzer.cpp.o.requires
DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/requires: DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DataStructureAnalyzer.cpp.o.requires

.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/requires

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/clean:
	cd /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer && $(CMAKE_COMMAND) -P CMakeFiles/DataStructureAnalyzerPass.dir/cmake_clean.cmake
.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/clean

DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/depend:
	cd /Users/umit/research/llvmDataStructureAnalyzer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/umit/research/llvmDataStructureAnalyzer /Users/umit/research/llvmDataStructureAnalyzer/DataStructureAnalyzer /Users/umit/research/llvmDataStructureAnalyzer/build /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer /Users/umit/research/llvmDataStructureAnalyzer/build/DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : DataStructureAnalyzer/CMakeFiles/DataStructureAnalyzerPass.dir/depend

