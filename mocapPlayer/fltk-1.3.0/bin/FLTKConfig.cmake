#
# FLTKConfig.cmake - FLTK CMake configuration file for external projects.
#
# This file is configured by FLTK and used by the UseFLTK.cmake module
# to load FLTK's settings for an external project.

set(FLTK_FOUND TRUE)
set(FLTK_VERSION 1.3.0)

set(FLTK_FLUID_EXECUTABLE "/usr/local/bin/fluid")

if(NOT " " STREQUAL "")
   set(FLTK_EXE_LINKER_FLAGS " ")
endif(NOT " " STREQUAL "")

set(FLTK_USE_FILE "/usr/local/lib/FLTK-1.3/UseFLTK.cmake")

set(FLTK_DIR "/usr/local/lib/FLTK-1.3")

set(FLTK_BIN_DIR "/usr/local/bin")
set(FLTK_LIB_DIR "/usr/local/lib")
set(FLTK_INCLUDE_DIR "/usr/local/include")
set(FLTK_DATA_DIR "/usr/local/share/FLTK")
set(FLTK_DOC_DIR "/usr/local/share/doc/FLTK")

set(FLTK_SHARED_LIBS_FOUND OFF)
set(FLTK_CAIRO_FOUND FALSE)
set(FLTK_GL_FOUND TRUE)
set(FLTK_THREADS_FOUND TRUE)
set(FLTK_PTHREADS_FOUND TRUE)
set(FLTK_BUILTIN_JPEG_FOUND TRUE)
set(FLTK_BUILTIN_ZLIB_FOUND FALSE)
set(FLTK_BUILTIN_PNG_FOUND FALSE)
set(FLTK_XINERAMA_FOUND FALSE)
set(FLTK_XFT_FOUND FALSE)
set(FLTK_XDBE_FOUND TRUE)

set(FLTK_CAIRO_FOUND FALSE)
set(FLTK_GL_FOUND TRUE)
set(FLTK_THREADS_FOUND TRUE)
set(FLTK_PTHREADS_FOUND TRUE)
set(FLTK_BUILTIN_JPEG_FOUND TRUE)
set(FLTK_BUILTIN_ZLIB_FOUND FALSE)
set(FLTK_BUILTIN_PNG_FOUND FALSE)
set(FLTK_XINERAMA_FOUND FALSE)
set(FLTK_XFT_FOUND FALSE)
set(FLTK_XDBE_FOUND TRUE)

include("/usr/local/lib/FLTK-1.3/FLTKLibraries.cmake")
