# Install script for directory: /home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/driver/blvdmotor_project/driver_blvd_controller

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/driver_blvd_controller/msg" TYPE FILE FILES
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/driver/blvdmotor_project/driver_blvd_controller/msg/speed_wheel.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/driver/blvdmotor_project/driver_blvd_controller/msg/MLS_Measurement.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/driver_blvd_controller/cmake" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/driver/blvdmotor_project/driver_blvd_controller/catkin_generated/installspace/driver_blvd_controller-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/include/driver_blvd_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/share/roseus/ros/driver_blvd_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/share/common-lisp/ros/driver_blvd_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/share/gennodejs/ros/driver_blvd_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/python2.7/dist-packages/driver_blvd_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/python2.7/dist-packages/driver_blvd_controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/driver/blvdmotor_project/driver_blvd_controller/catkin_generated/installspace/driver_blvd_controller.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/driver_blvd_controller/cmake" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/driver/blvdmotor_project/driver_blvd_controller/catkin_generated/installspace/driver_blvd_controller-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/driver_blvd_controller/cmake" TYPE FILE FILES
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/driver/blvdmotor_project/driver_blvd_controller/catkin_generated/installspace/driver_blvd_controllerConfig.cmake"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/driver/blvdmotor_project/driver_blvd_controller/catkin_generated/installspace/driver_blvd_controllerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/driver_blvd_controller" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/driver/blvdmotor_project/driver_blvd_controller/package.xml")
endif()

