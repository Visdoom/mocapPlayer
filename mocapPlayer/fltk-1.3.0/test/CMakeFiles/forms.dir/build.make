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
include test/CMakeFiles/forms.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/forms.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/forms.dir/flags.make

test/CMakeFiles/forms.dir/forms.cxx.o: test/CMakeFiles/forms.dir/flags.make
test/CMakeFiles/forms.dir/forms.cxx.o: test/forms.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/forms.dir/forms.cxx.o"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/forms.dir/forms.cxx.o -c /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/forms.cxx

test/CMakeFiles/forms.dir/forms.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forms.dir/forms.cxx.i"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/forms.cxx > CMakeFiles/forms.dir/forms.cxx.i

test/CMakeFiles/forms.dir/forms.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forms.dir/forms.cxx.s"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/forms.cxx -o CMakeFiles/forms.dir/forms.cxx.s

test/CMakeFiles/forms.dir/forms.cxx.o.requires:
.PHONY : test/CMakeFiles/forms.dir/forms.cxx.o.requires

test/CMakeFiles/forms.dir/forms.cxx.o.provides: test/CMakeFiles/forms.dir/forms.cxx.o.requires
	$(MAKE) -f test/CMakeFiles/forms.dir/build.make test/CMakeFiles/forms.dir/forms.cxx.o.provides.build
.PHONY : test/CMakeFiles/forms.dir/forms.cxx.o.provides

test/CMakeFiles/forms.dir/forms.cxx.o.provides.build: test/CMakeFiles/forms.dir/forms.cxx.o

# Object files for target forms
forms_OBJECTS = \
"CMakeFiles/forms.dir/forms.cxx.o"

# External object files for target forms
forms_EXTERNAL_OBJECTS =

bin/examples/forms: test/CMakeFiles/forms.dir/forms.cxx.o
bin/examples/forms: lib/libfltk.a
bin/examples/forms: lib/libfltk_forms.a
bin/examples/forms: lib/libfltk.a
bin/examples/forms: /usr/lib/x86_64-linux-gnu/libSM.so
bin/examples/forms: /usr/lib/x86_64-linux-gnu/libICE.so
bin/examples/forms: /usr/lib/x86_64-linux-gnu/libX11.so
bin/examples/forms: /usr/lib/x86_64-linux-gnu/libXext.so
bin/examples/forms: test/CMakeFiles/forms.dir/build.make
bin/examples/forms: test/CMakeFiles/forms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/examples/forms"
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/forms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/forms.dir/build: bin/examples/forms
.PHONY : test/CMakeFiles/forms.dir/build

test/CMakeFiles/forms.dir/requires: test/CMakeFiles/forms.dir/forms.cxx.o.requires
.PHONY : test/CMakeFiles/forms.dir/requires

test/CMakeFiles/forms.dir/clean:
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test && $(CMAKE_COMMAND) -P CMakeFiles/forms.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/forms.dir/clean

test/CMakeFiles/forms.dir/depend:
	cd /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0 /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0 /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test/CMakeFiles/forms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/forms.dir/depend
