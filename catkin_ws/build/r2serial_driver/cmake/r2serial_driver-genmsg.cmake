# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "r2serial_driver: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ir2serial_driver:/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(r2serial_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" NAME_WE)
add_custom_target(_r2serial_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "r2serial_driver" "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(r2serial_driver
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r2serial_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(r2serial_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r2serial_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(r2serial_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(r2serial_driver_generate_messages r2serial_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" NAME_WE)
add_dependencies(r2serial_driver_generate_messages_cpp _r2serial_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r2serial_driver_gencpp)
add_dependencies(r2serial_driver_gencpp r2serial_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r2serial_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(r2serial_driver
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r2serial_driver
)

### Generating Services

### Generating Module File
_generate_module_eus(r2serial_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r2serial_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(r2serial_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(r2serial_driver_generate_messages r2serial_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" NAME_WE)
add_dependencies(r2serial_driver_generate_messages_eus _r2serial_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r2serial_driver_geneus)
add_dependencies(r2serial_driver_geneus r2serial_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r2serial_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(r2serial_driver
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r2serial_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(r2serial_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r2serial_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(r2serial_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(r2serial_driver_generate_messages r2serial_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" NAME_WE)
add_dependencies(r2serial_driver_generate_messages_lisp _r2serial_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r2serial_driver_genlisp)
add_dependencies(r2serial_driver_genlisp r2serial_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r2serial_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(r2serial_driver
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r2serial_driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(r2serial_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r2serial_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(r2serial_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(r2serial_driver_generate_messages r2serial_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" NAME_WE)
add_dependencies(r2serial_driver_generate_messages_nodejs _r2serial_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r2serial_driver_gennodejs)
add_dependencies(r2serial_driver_gennodejs r2serial_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r2serial_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(r2serial_driver
  "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r2serial_driver
)

### Generating Services

### Generating Module File
_generate_module_py(r2serial_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r2serial_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(r2serial_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(r2serial_driver_generate_messages r2serial_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/TungNV/NavigationMergerLaser/catkin_ws/src/r2serial_driver/msg/Num.msg" NAME_WE)
add_dependencies(r2serial_driver_generate_messages_py _r2serial_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(r2serial_driver_genpy)
add_dependencies(r2serial_driver_genpy r2serial_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS r2serial_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r2serial_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/r2serial_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(r2serial_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r2serial_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/r2serial_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(r2serial_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r2serial_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/r2serial_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(r2serial_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r2serial_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/r2serial_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(r2serial_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r2serial_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r2serial_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/r2serial_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(r2serial_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
