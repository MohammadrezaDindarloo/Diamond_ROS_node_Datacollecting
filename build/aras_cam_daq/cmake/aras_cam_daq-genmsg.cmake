# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aras_cam_daq: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iaras_cam_daq:/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aras_cam_daq_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" NAME_WE)
add_custom_target(_aras_cam_daq_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aras_cam_daq" "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" NAME_WE)
add_custom_target(_aras_cam_daq_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aras_cam_daq" "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" NAME_WE)
add_custom_target(_aras_cam_daq_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aras_cam_daq" "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_cpp(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_cpp(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aras_cam_daq
)

### Generating Services

### Generating Module File
_generate_module_cpp(aras_cam_daq
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aras_cam_daq
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aras_cam_daq_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aras_cam_daq_generate_messages aras_cam_daq_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_cpp _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_cpp _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_cpp _aras_cam_daq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aras_cam_daq_gencpp)
add_dependencies(aras_cam_daq_gencpp aras_cam_daq_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aras_cam_daq_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_eus(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_eus(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aras_cam_daq
)

### Generating Services

### Generating Module File
_generate_module_eus(aras_cam_daq
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aras_cam_daq
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aras_cam_daq_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aras_cam_daq_generate_messages aras_cam_daq_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_eus _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_eus _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_eus _aras_cam_daq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aras_cam_daq_geneus)
add_dependencies(aras_cam_daq_geneus aras_cam_daq_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aras_cam_daq_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_lisp(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_lisp(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aras_cam_daq
)

### Generating Services

### Generating Module File
_generate_module_lisp(aras_cam_daq
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aras_cam_daq
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aras_cam_daq_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aras_cam_daq_generate_messages aras_cam_daq_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_lisp _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_lisp _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_lisp _aras_cam_daq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aras_cam_daq_genlisp)
add_dependencies(aras_cam_daq_genlisp aras_cam_daq_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aras_cam_daq_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_nodejs(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_nodejs(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aras_cam_daq
)

### Generating Services

### Generating Module File
_generate_module_nodejs(aras_cam_daq
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aras_cam_daq
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aras_cam_daq_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aras_cam_daq_generate_messages aras_cam_daq_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_nodejs _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_nodejs _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_nodejs _aras_cam_daq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aras_cam_daq_gennodejs)
add_dependencies(aras_cam_daq_gennodejs aras_cam_daq_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aras_cam_daq_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_py(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq
)
_generate_msg_py(aras_cam_daq
  "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq
)

### Generating Services

### Generating Module File
_generate_module_py(aras_cam_daq
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aras_cam_daq_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aras_cam_daq_generate_messages aras_cam_daq_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/matlab_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_py _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/cdr_data.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_py _aras_cam_daq_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mohammad/Diamond_SF/collector_ws/src/aras_cam_daq/msg/diamond.msg" NAME_WE)
add_dependencies(aras_cam_daq_generate_messages_py _aras_cam_daq_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aras_cam_daq_genpy)
add_dependencies(aras_cam_daq_genpy aras_cam_daq_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aras_cam_daq_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aras_cam_daq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aras_cam_daq
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(aras_cam_daq_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(aras_cam_daq_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(aras_cam_daq_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aras_cam_daq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aras_cam_daq
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(aras_cam_daq_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(aras_cam_daq_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(aras_cam_daq_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aras_cam_daq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aras_cam_daq
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(aras_cam_daq_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(aras_cam_daq_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(aras_cam_daq_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aras_cam_daq)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aras_cam_daq
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(aras_cam_daq_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(aras_cam_daq_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(aras_cam_daq_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aras_cam_daq
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(aras_cam_daq_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(aras_cam_daq_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(aras_cam_daq_generate_messages_py sensor_msgs_generate_messages_py)
endif()
