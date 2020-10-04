# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sick_lidar_localization: 7 messages, 15 services")

set(MSG_I_FLAGS "-Isick_lidar_localization:/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sick_lidar_localization_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" "sick_lidar_localization/SickLocResultPortCrcMsg:sick_lidar_localization/SickLocResultPortHeaderMsg:sick_lidar_localization/SickLocResultPortPayloadMsg:std_msgs/Header"
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" "sick_lidar_localization/SickLocResultPortHeaderMsg:sick_lidar_localization/SickLocResultPortCrcMsg:sick_lidar_localization/SickLocResultPortTelegramMsg:sick_lidar_localization/SickLocResultPortPayloadMsg:std_msgs/Header"
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" ""
)

get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" NAME_WE)
add_custom_target(_sick_lidar_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sick_lidar_localization" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)

### Generating Services
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_cpp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
)

### Generating Module File
_generate_module_cpp(sick_lidar_localization
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sick_lidar_localization_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sick_lidar_localization_generate_messages sick_lidar_localization_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_cpp _sick_lidar_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lidar_localization_gencpp)
add_dependencies(sick_lidar_localization_gencpp sick_lidar_localization_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lidar_localization_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)

### Generating Services
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_eus(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
)

### Generating Module File
_generate_module_eus(sick_lidar_localization
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sick_lidar_localization_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sick_lidar_localization_generate_messages sick_lidar_localization_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_eus _sick_lidar_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lidar_localization_geneus)
add_dependencies(sick_lidar_localization_geneus sick_lidar_localization_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lidar_localization_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)

### Generating Services
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_lisp(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
)

### Generating Module File
_generate_module_lisp(sick_lidar_localization
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sick_lidar_localization_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sick_lidar_localization_generate_messages sick_lidar_localization_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_lisp _sick_lidar_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lidar_localization_genlisp)
add_dependencies(sick_lidar_localization_genlisp sick_lidar_localization_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lidar_localization_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)

### Generating Services
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_nodejs(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
)

### Generating Module File
_generate_module_nodejs(sick_lidar_localization
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sick_lidar_localization_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sick_lidar_localization_generate_messages sick_lidar_localization_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_nodejs _sick_lidar_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lidar_localization_gennodejs)
add_dependencies(sick_lidar_localization_gennodejs sick_lidar_localization_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lidar_localization_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_msg_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg;/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)

### Generating Services
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)
_generate_srv_py(sick_lidar_localization
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
)

### Generating Module File
_generate_module_py(sick_lidar_localization
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sick_lidar_localization_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sick_lidar_localization_generate_messages sick_lidar_localization_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocColaTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTelegramMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocColaTelegramSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultModeSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortHeaderMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortTestcaseMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPortSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseIntervalSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultEndiannessSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortPayloadMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocDiagnosticMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStartLocalizingSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocTimeSyncSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetPoseSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestTimestampSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStateSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocStopAndSaveSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocRequestResultDataSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocIsSystemReadySrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/srv/SickLocSetResultPoseEnabledSrv.srv" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/sick_lidar_localization-master/msg/SickLocResultPortCrcMsg.msg" NAME_WE)
add_dependencies(sick_lidar_localization_generate_messages_py _sick_lidar_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sick_lidar_localization_genpy)
add_dependencies(sick_lidar_localization_genpy sick_lidar_localization_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sick_lidar_localization_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sick_lidar_localization
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sick_lidar_localization_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sick_lidar_localization_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sick_lidar_localization_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sick_lidar_localization
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sick_lidar_localization_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sick_lidar_localization_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sick_lidar_localization_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sick_lidar_localization
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sick_lidar_localization_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sick_lidar_localization_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sick_lidar_localization_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sick_lidar_localization
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sick_lidar_localization_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sick_lidar_localization_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sick_lidar_localization_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sick_lidar_localization
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sick_lidar_localization_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sick_lidar_localization_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sick_lidar_localization_generate_messages_py std_msgs_generate_messages_py)
endif()
