# Install script for directory: /Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/test

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/adjuster" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/adjuster")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/adjuster"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/adjuster")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/adjuster")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/adjuster" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/adjuster")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/adjuster")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/arc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/arc")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/arc"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/arc")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/arc")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/arc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/arc")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/arc")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/ask" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/ask")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/ask"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/ask")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/ask")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/ask" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/ask")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/ask")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/bitmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/bitmap")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/bitmap"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/bitmap")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/bitmap")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/bitmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/bitmap")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/bitmap")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/blocks" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/blocks")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/blocks"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/blocks")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/blocks")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/blocks" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/blocks")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/blocks")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/boxtype" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/boxtype")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/boxtype"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/boxtype")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/boxtype")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/boxtype" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/boxtype")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/boxtype")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/browser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/browser")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/browser"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/browser")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/browser")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/browser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/browser")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/browser")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/button" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/button")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/button"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/button")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/button")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/button" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/button")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/button")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/buttons" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/buttons")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/buttons"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/buttons")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/buttons")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/buttons" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/buttons")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/buttons")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/checkers" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/checkers")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/checkers"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/checkers")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/checkers")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/checkers" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/checkers")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/checkers")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/clock" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/clock")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/clock"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/clock")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/clock")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/clock" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/clock")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/clock")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/colbrowser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/colbrowser")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/colbrowser"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/colbrowser")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/colbrowser")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/colbrowser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/colbrowser")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/colbrowser")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/color_chooser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/color_chooser")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/color_chooser"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/color_chooser")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/color_chooser")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/color_chooser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/color_chooser")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/color_chooser")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cursor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cursor")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cursor"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/cursor")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/cursor")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cursor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cursor")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cursor")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/curve" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/curve")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/curve"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/curve")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/curve")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/curve" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/curve")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/curve")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/demo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/demo")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/demo"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/demo")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/demo")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/demo" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/demo")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/demo")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/device" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/device")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/device"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/device")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/device")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/device" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/device")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/device")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/doublebuffer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/doublebuffer")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/doublebuffer"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/doublebuffer")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/doublebuffer")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/doublebuffer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/doublebuffer")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/doublebuffer")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/editor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/editor")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/editor"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/editor")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/editor")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/editor" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/editor")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/editor")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fast_slow" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fast_slow")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fast_slow"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/fast_slow")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/fast_slow")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fast_slow" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fast_slow")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fast_slow")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/file_chooser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/file_chooser")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/file_chooser"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/file_chooser")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/file_chooser")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/file_chooser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/file_chooser")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/file_chooser")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fonts" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fonts")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fonts"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/fonts")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/fonts")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fonts" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fonts")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fonts")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/forms" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/forms")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/forms"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/forms")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/forms")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/forms" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/forms")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/forms")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/hello" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/hello")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/hello"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/hello")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/hello")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/hello" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/hello")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/hello")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/help" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/help")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/help"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/help")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/help")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/help" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/help")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/help")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/iconize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/iconize")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/iconize"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/iconize")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/iconize")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/iconize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/iconize")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/iconize")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/image" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/image")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/image"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/image")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/image")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/image" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/image")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/image")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/inactive" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/inactive")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/inactive"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/inactive")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/inactive")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/inactive" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/inactive")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/inactive")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/input")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/input")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input_choice" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input_choice")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input_choice"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/input_choice")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/input_choice")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input_choice" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input_choice")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/input_choice")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/keyboard" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/keyboard")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/keyboard"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/keyboard")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/keyboard")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/keyboard" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/keyboard")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/keyboard")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/label" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/label")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/label"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/label")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/label")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/label" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/label")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/label")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/line_style" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/line_style")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/line_style"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/line_style")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/line_style")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/line_style" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/line_style")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/line_style")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/list_visuals" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/list_visuals")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/list_visuals"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/list_visuals")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/list_visuals")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/list_visuals" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/list_visuals")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/list_visuals")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/mandelbrot" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/mandelbrot")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/mandelbrot"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/mandelbrot")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/mandelbrot")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/mandelbrot" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/mandelbrot")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/mandelbrot")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/menubar" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/menubar")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/menubar"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/menubar")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/menubar")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/menubar" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/menubar")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/menubar")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/message" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/message")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/message"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/message")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/message")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/message" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/message")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/message")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/minimum" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/minimum")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/minimum"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/minimum")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/minimum")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/minimum" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/minimum")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/minimum")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/native-filechooser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/native-filechooser")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/native-filechooser"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/native-filechooser")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/native-filechooser")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/native-filechooser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/native-filechooser")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/native-filechooser")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/navigation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/navigation")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/navigation"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/navigation")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/navigation")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/navigation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/navigation")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/navigation")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/output" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/output")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/output"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/output")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/output")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/output" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/output")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/output")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/overlay" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/overlay")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/overlay"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/overlay")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/overlay")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/overlay" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/overlay")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/overlay")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pack" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pack")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pack"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/pack")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/pack")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pack" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pack")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pack")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/pixmap")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/pixmap")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap_browser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap_browser")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap_browser"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/pixmap_browser")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/pixmap_browser")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap_browser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap_browser")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/pixmap_browser")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/preferences" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/preferences")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/preferences"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/preferences")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/preferences")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/preferences" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/preferences")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/preferences")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/radio" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/radio")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/radio"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/radio")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/radio")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/radio" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/radio")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/radio")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resize")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resize"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/resize")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/resize")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resize" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resize")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resize")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resizebox" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resizebox")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resizebox"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/resizebox")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/resizebox")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resizebox" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resizebox")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/resizebox")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/rotated_text" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/rotated_text")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/rotated_text"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/rotated_text")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/rotated_text")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/rotated_text" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/rotated_text")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/rotated_text")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/scroll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/scroll")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/scroll"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/scroll")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/scroll")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/scroll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/scroll")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/scroll")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/subwindow" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/subwindow")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/subwindow"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/subwindow")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/subwindow")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/subwindow" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/subwindow")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/subwindow")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/sudoku" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/sudoku")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/sudoku"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/sudoku")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/sudoku")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/sudoku" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/sudoku")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/sudoku")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/symbols" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/symbols")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/symbols"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/symbols")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/symbols")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/symbols" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/symbols")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/symbols")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tabs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tabs")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tabs"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/tabs")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/tabs")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tabs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tabs")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tabs")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/table" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/table")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/table"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/table")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/table")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/table" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/table")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/table")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/threads" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/threads")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/threads"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/threads")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/threads")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/threads" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/threads")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/threads")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tile" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tile")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tile"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/tile")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/tile")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tile" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tile")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tile")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tiled_image" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tiled_image")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tiled_image"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/tiled_image")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/tiled_image")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tiled_image" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tiled_image")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tiled_image")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tree" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tree")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tree"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/tree")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/tree")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tree" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tree")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/tree")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/utf8" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/utf8")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/utf8"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/utf8")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/utf8")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/utf8" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/utf8")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/utf8")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/valuators" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/valuators")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/valuators"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/valuators")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/valuators")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/valuators" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/valuators")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/valuators")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/unittests" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/unittests")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/unittests"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/unittests")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/unittests")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/unittests" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/unittests")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/unittests")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/CubeView" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/CubeView")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/CubeView"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/CubeView")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/CubeView")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/CubeView" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/CubeView")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/CubeView")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cube" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cube")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cube"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/cube")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/cube")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cube" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cube")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/cube")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fractals" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fractals")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fractals"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/fractals")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/fractals")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fractals" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fractals")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fractals")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fullscreen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fullscreen")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fullscreen"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/fullscreen")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/fullscreen")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fullscreen" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fullscreen")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/fullscreen")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/glpuzzle" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/glpuzzle")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/glpuzzle"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/glpuzzle")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/glpuzzle")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/glpuzzle" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/glpuzzle")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/glpuzzle")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/gl_overlay" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/gl_overlay")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/gl_overlay"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/gl_overlay")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/gl_overlay")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/gl_overlay" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/gl_overlay")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/gl_overlay")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/shape" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/shape")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/shape"
         RPATH "")
  ENDIF()
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/doc/FLTK/examples/shape")
FILE(INSTALL DESTINATION "/usr/local/share/doc/FLTK/examples" TYPE EXECUTABLE FILES "/Network/Servers/duerer/Volumes/duerer/laturnus/Downloads/new_acm/mocapPlayer/fltk-1.3.0/bin/examples/shape")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/shape" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/shape")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/share/doc/FLTK/examples/shape")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

