if(NOT EXISTS "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/install_manifest.txt")
   message(FATAL_ERROR
      "Cannot find install manifest: \"/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/install_manifest.txt\"")
endif(NOT EXISTS "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/install_manifest.txt")

file(READ "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")

foreach(file ${files})
message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
   exec_program("/usr/bin/cmake"
      ARGS "-E remove -f \"$ENV{DESTDIR}${file}\""
      OUTPUT_VARIABLE rm_out
      RETURN_VALUE rm_retval
   )
   if(NOT "${rm_retval}" STREQUAL 0)
      message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
   endif(NOT "${rm_retval}" STREQUAL 0)
endforeach(file)
