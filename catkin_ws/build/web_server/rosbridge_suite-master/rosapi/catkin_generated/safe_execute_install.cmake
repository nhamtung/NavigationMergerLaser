execute_process(COMMAND "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/web_server/rosbridge_suite-master/rosapi/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/build/web_server/rosbridge_suite-master/rosapi/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
