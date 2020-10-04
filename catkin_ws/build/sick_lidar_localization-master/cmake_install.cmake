# Install script for directory: /home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization/msg" TYPE FILE FILES
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization/srv" TYPE FILE FILES
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization/cmake" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/sick_lidar_localization-master/catkin_generated/installspace/sick_lidar_localization-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/include/sick_lidar_localization")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/share/roseus/ros/sick_lidar_localization")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/share/common-lisp/ros/sick_lidar_localization")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/share/gennodejs/ros/sick_lidar_localization")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/python2.7/dist-packages/sick_lidar_localization")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/python2.7/dist-packages/sick_lidar_localization")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/sick_lidar_localization-master/catkin_generated/installspace/sick_lidar_localization.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization/cmake" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/sick_lidar_localization-master/catkin_generated/installspace/sick_lidar_localization-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization/cmake" TYPE FILE FILES
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/sick_lidar_localization-master/catkin_generated/installspace/sick_lidar_localizationConfig.cmake"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/sick_lidar_localization-master/catkin_generated/installspace/sick_lidar_localizationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization" TYPE FILE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/libsick_localization_lib.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_localization_lib.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/sim_loc_driver")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/sim_loc_driver_check")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_driver_check")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/sim_loc_test_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_test_server")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/sim_loc_time_sync")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/sim_loc_time_sync")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/pointcloud_converter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/pointcloud_converter")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/cola_service_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/cola_service_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/unittest_sim_loc_parser")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/unittest_sim_loc_parser")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization" TYPE EXECUTABLE FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib/sick_lidar_localization/verify_sim_loc_driver")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver"
         OLD_RPATH "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_lidar_localization/verify_sim_loc_driver")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sick_lidar_localization" TYPE DIRECTORY FILES "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/include/sick_lidar_localization/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_lidar_localization" TYPE DIRECTORY FILES
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/launch"
    "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/yaml"
    )
endif()

