# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0

# Include any dependencies generated for this target.
include test/CMakeFiles/iconize.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/iconize.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/iconize.dir/flags.make

test/CMakeFiles/iconize.dir/iconize.cxx.o: test/CMakeFiles/iconize.dir/flags.make
test/CMakeFiles/iconize.dir/iconize.cxx.o: test/iconize.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/iconize.dir/iconize.cxx.o"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/iconize.dir/iconize.cxx.o -c /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/iconize.cxx

test/CMakeFiles/iconize.dir/iconize.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/iconize.dir/iconize.cxx.i"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/iconize.cxx > CMakeFiles/iconize.dir/iconize.cxx.i

test/CMakeFiles/iconize.dir/iconize.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/iconize.dir/iconize.cxx.s"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/iconize.cxx -o CMakeFiles/iconize.dir/iconize.cxx.s

test/CMakeFiles/iconize.dir/iconize.cxx.o.requires:
.PHONY : test/CMakeFiles/iconize.dir/iconize.cxx.o.requires

test/CMakeFiles/iconize.dir/iconize.cxx.o.provides: test/CMakeFiles/iconize.dir/iconize.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/iconize.dir/build.make test/CMakeFiles/iconize.dir/iconize.cxx.o.provides.build
.PHONY : test/CMakeFiles/iconize.dir/iconize.cxx.o.provides

test/CMakeFiles/iconize.dir/iconize.cxx.o.provides.build: test/CMakeFiles/iconize.dir/iconize.cxx.o

# Object files for target iconize
iconize_OBJECTS = \
"CMakeFiles/iconize.dir/iconize.cxx.o"

# External object files for target iconize
iconize_EXTERNAL_OBJECTS =

bin/examples/iconize: test/CMakeFiles/iconize.dir/iconize.cxx.o
bin/examples/iconize: lib/libfltk.a
bin/examples/iconize: /usr/lib/x86_64-linux-gnu/libSM.so
bin/examples/iconize: /usr/lib/x86_64-linux-gnu/libICE.so
bin/examples/iconize: /usr/lib/x86_64-linux-gnu/libX11.so
bin/examples/iconize: /usr/lib/x86_64-linux-gnu/libXext.so
bin/examples/iconize: test/CMakeFiles/iconize.dir/build.make
bin/examples/iconize: test/CMakeFiles/iconize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/examples/iconize"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/iconize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/iconize.dir/build: bin/examples/iconize
.PHONY : test/CMakeFiles/iconize.dir/build

test/CMakeFiles/iconize.dir/requires: test/CMakeFiles/iconize.dir/iconize.cxx.o.requires
.PHONY : test/CMakeFiles/iconize.dir/requires

test/CMakeFiles/iconize.dir/clean:
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && $(CMAKE_COMMAND) -P CMakeFiles/iconize.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/iconize.dir/clean

test/CMakeFiles/iconize.dir/depend:
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0 /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0 /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/CMakeFiles/iconize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/iconize.dir/depend
