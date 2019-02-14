# Install script for directory: /home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lucrezia/sofar_ws/src/rosjava/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosjava_test_msgs/msg" TYPE FILE FILES
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/Composite.msg"
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/CompositeA.msg"
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/CompositeB.msg"
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/TestArrays.msg"
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/TestHeader.msg"
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/TestPrimitives.msg"
    "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/msg/TestString.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosjava_test_msgs/srv" TYPE FILE FILES "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/srv/AddTwoInts.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosjava_test_msgs/cmake" TYPE FILE FILES "/home/lucrezia/sofar_ws/src/rosjava/build/rosjava_test_msgs/catkin_generated/installspace/rosjava_test_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lucrezia/sofar_ws/src/rosjava/devel/include/rosjava_test_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lucrezia/sofar_ws/src/rosjava/devel/share/roseus/ros/rosjava_test_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lucrezia/sofar_ws/src/rosjava/devel/share/common-lisp/ros/rosjava_test_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lucrezia/sofar_ws/src/rosjava/devel/share/gennodejs/ros/rosjava_test_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/lucrezia/sofar_ws/src/rosjava/devel/lib/python2.7/dist-packages/rosjava_test_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lucrezia/sofar_ws/src/rosjava/devel/lib/python2.7/dist-packages/rosjava_test_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lucrezia/sofar_ws/src/rosjava/build/rosjava_test_msgs/catkin_generated/installspace/rosjava_test_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosjava_test_msgs/cmake" TYPE FILE FILES "/home/lucrezia/sofar_ws/src/rosjava/build/rosjava_test_msgs/catkin_generated/installspace/rosjava_test_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosjava_test_msgs/cmake" TYPE FILE FILES
    "/home/lucrezia/sofar_ws/src/rosjava/build/rosjava_test_msgs/catkin_generated/installspace/rosjava_test_msgsConfig.cmake"
    "/home/lucrezia/sofar_ws/src/rosjava/build/rosjava_test_msgs/catkin_generated/installspace/rosjava_test_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosjava_test_msgs" TYPE FILE FILES "/home/lucrezia/sofar_ws/src/rosjava/src/rosjava_test_msgs/package.xml")
endif()

