# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/tp4_exo2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tp4_exo2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tp4_exo2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tp4_exo2.dir/flags.make

CMakeFiles/tp4_exo2.dir/main.cpp.o: CMakeFiles/tp4_exo2.dir/flags.make
CMakeFiles/tp4_exo2.dir/main.cpp.o: /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/main.cpp
CMakeFiles/tp4_exo2.dir/main.cpp.o: CMakeFiles/tp4_exo2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tp4_exo2.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp4_exo2.dir/main.cpp.o -MF CMakeFiles/tp4_exo2.dir/main.cpp.o.d -o CMakeFiles/tp4_exo2.dir/main.cpp.o -c /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/main.cpp

CMakeFiles/tp4_exo2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp4_exo2.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/main.cpp > CMakeFiles/tp4_exo2.dir/main.cpp.i

CMakeFiles/tp4_exo2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp4_exo2.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/main.cpp -o CMakeFiles/tp4_exo2.dir/main.cpp.s

CMakeFiles/tp4_exo2.dir/bib.cc.o: CMakeFiles/tp4_exo2.dir/flags.make
CMakeFiles/tp4_exo2.dir/bib.cc.o: /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/bib.cc
CMakeFiles/tp4_exo2.dir/bib.cc.o: CMakeFiles/tp4_exo2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tp4_exo2.dir/bib.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tp4_exo2.dir/bib.cc.o -MF CMakeFiles/tp4_exo2.dir/bib.cc.o.d -o CMakeFiles/tp4_exo2.dir/bib.cc.o -c /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/bib.cc

CMakeFiles/tp4_exo2.dir/bib.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp4_exo2.dir/bib.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/bib.cc > CMakeFiles/tp4_exo2.dir/bib.cc.i

CMakeFiles/tp4_exo2.dir/bib.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp4_exo2.dir/bib.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2/bib.cc -o CMakeFiles/tp4_exo2.dir/bib.cc.s

# Object files for target tp4_exo2
tp4_exo2_OBJECTS = \
"CMakeFiles/tp4_exo2.dir/main.cpp.o" \
"CMakeFiles/tp4_exo2.dir/bib.cc.o"

# External object files for target tp4_exo2
tp4_exo2_EXTERNAL_OBJECTS =

tp4_exo2: CMakeFiles/tp4_exo2.dir/main.cpp.o
tp4_exo2: CMakeFiles/tp4_exo2.dir/bib.cc.o
tp4_exo2: CMakeFiles/tp4_exo2.dir/build.make
tp4_exo2: CMakeFiles/tp4_exo2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tp4_exo2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp4_exo2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tp4_exo2.dir/build: tp4_exo2
.PHONY : CMakeFiles/tp4_exo2.dir/build

CMakeFiles/tp4_exo2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tp4_exo2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tp4_exo2.dir/clean

CMakeFiles/tp4_exo2.dir/depend:
	cd /home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2 /home/hzen/Etudes/L3/POO/TPs/TP4/tp4_exo2 /home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug /home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug /home/hzen/Etudes/L3/POO/TPs/TP4/build-tp4_exo2-Desktop-Debug/CMakeFiles/tp4_exo2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tp4_exo2.dir/depend

