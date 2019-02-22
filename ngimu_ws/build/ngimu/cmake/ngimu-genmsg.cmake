# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ngimu: 12 messages, 0 services")

set(MSG_I_FLAGS "-Ingimu:/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ngimu_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" NAME_WE)
add_custom_target(_ngimu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ngimu" "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)
_generate_msg_cpp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
)

### Generating Services

### Generating Module File
_generate_module_cpp(ngimu
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ngimu_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ngimu_generate_messages ngimu_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_cpp _ngimu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ngimu_gencpp)
add_dependencies(ngimu_gencpp ngimu_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ngimu_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)
_generate_msg_eus(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
)

### Generating Services

### Generating Module File
_generate_module_eus(ngimu
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ngimu_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ngimu_generate_messages ngimu_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_eus _ngimu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ngimu_geneus)
add_dependencies(ngimu_geneus ngimu_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ngimu_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)
_generate_msg_lisp(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
)

### Generating Services

### Generating Module File
_generate_module_lisp(ngimu
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ngimu_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ngimu_generate_messages ngimu_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_lisp _ngimu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ngimu_genlisp)
add_dependencies(ngimu_genlisp ngimu_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ngimu_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)
_generate_msg_nodejs(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ngimu
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ngimu_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ngimu_generate_messages ngimu_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_nodejs _ngimu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ngimu_gennodejs)
add_dependencies(ngimu_gennodejs ngimu_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ngimu_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)
_generate_msg_py(ngimu
  "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
)

### Generating Services

### Generating Module File
_generate_module_py(ngimu
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ngimu_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ngimu_generate_messages ngimu_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMURotationMatrix.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUSensors.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEarthAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUHumidity.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAltitude.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUMagnitudes.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMULinearAcceleration.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUAuxserial.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUQuaternion.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUBattery.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUTemperature.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/awad1080/Desktop/ngimu_ws/src/ngimu/msg/NGIMUEuler.msg" NAME_WE)
add_dependencies(ngimu_generate_messages_py _ngimu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ngimu_genpy)
add_dependencies(ngimu_genpy ngimu_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ngimu_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ngimu
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ngimu_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ngimu_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ngimu
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ngimu_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ngimu_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ngimu
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ngimu_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ngimu_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ngimu
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ngimu_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ngimu_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ngimu
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ngimu_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ngimu_generate_messages_py sensor_msgs_generate_messages_py)
endif()
