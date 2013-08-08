#----------------------------------------------------------------
# Generated CMake target import file for configuration "".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fltk_jpeg" for configuration ""
SET_PROPERTY(TARGET fltk_jpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(fltk_jpeg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libfltk_jpeg.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS fltk_jpeg )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_fltk_jpeg "/usr/local/lib/libfltk_jpeg.a" )

# Import target "fluid" for configuration ""
SET_PROPERTY(TARGET fluid APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(fluid PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/usr/local/bin/fluid"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS fluid )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_fluid "/usr/local/bin/fluid" )

# Import target "fltk" for configuration ""
SET_PROPERTY(TARGET fltk APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(fltk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C;CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "-lpthread;/usr/lib/x86_64-linux-gnu/libSM.so;/usr/lib/x86_64-linux-gnu/libICE.so;/usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libfltk.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS fltk )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_fltk "/usr/local/lib/libfltk.a" )

# Import target "fltk_forms" for configuration ""
SET_PROPERTY(TARGET fltk_forms APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(fltk_forms PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libfltk_forms.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS fltk_forms )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_fltk_forms "/usr/local/lib/libfltk_forms.a" )

# Import target "fltk_images" for configuration ""
SET_PROPERTY(TARGET fltk_images APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(fltk_images PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk;/usr/lib/x86_64-linux-gnu/libpng.so;/usr/lib/x86_64-linux-gnu/libz.so;fltk_jpeg;/usr/lib/x86_64-linux-gnu/libz.so"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libfltk_images.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS fltk_images )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_fltk_images "/usr/local/lib/libfltk_images.a" )

# Import target "fltk_gl" for configuration ""
SET_PROPERTY(TARGET fltk_gl APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
SET_TARGET_PROPERTIES(fltk_gl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "fltk;/usr/lib/x86_64-linux-gnu/libGLU.so;/usr/lib/x86_64-linux-gnu/libGL.so;/usr/lib/x86_64-linux-gnu/libSM.so;/usr/lib/x86_64-linux-gnu/libICE.so;/usr/lib/x86_64-linux-gnu/libX11.so;/usr/lib/x86_64-linux-gnu/libXext.so"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libfltk_gl.a"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS fltk_gl )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_fltk_gl "/usr/local/lib/libfltk_gl.a" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
