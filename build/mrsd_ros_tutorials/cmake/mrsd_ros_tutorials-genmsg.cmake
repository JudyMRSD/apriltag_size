# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mrsd_ros_tutorials: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mrsd_ros_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv" NAME_WE)
add_custom_target(_mrsd_ros_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrsd_ros_tutorials" "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv" NAME_WE)
add_custom_target(_mrsd_ros_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrsd_ros_tutorials" "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mrsd_ros_tutorials
  "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrsd_ros_tutorials
)
_generate_srv_cpp(mrsd_ros_tutorials
  "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrsd_ros_tutorials
)

### Generating Module File
_generate_module_cpp(mrsd_ros_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrsd_ros_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mrsd_ros_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mrsd_ros_tutorials_generate_messages mrsd_ros_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv" NAME_WE)
add_dependencies(mrsd_ros_tutorials_generate_messages_cpp _mrsd_ros_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv" NAME_WE)
add_dependencies(mrsd_ros_tutorials_generate_messages_cpp _mrsd_ros_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrsd_ros_tutorials_gencpp)
add_dependencies(mrsd_ros_tutorials_gencpp mrsd_ros_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrsd_ros_tutorials_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mrsd_ros_tutorials
  "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrsd_ros_tutorials
)
_generate_srv_lisp(mrsd_ros_tutorials
  "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrsd_ros_tutorials
)

### Generating Module File
_generate_module_lisp(mrsd_ros_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrsd_ros_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mrsd_ros_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mrsd_ros_tutorials_generate_messages mrsd_ros_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv" NAME_WE)
add_dependencies(mrsd_ros_tutorials_generate_messages_lisp _mrsd_ros_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv" NAME_WE)
add_dependencies(mrsd_ros_tutorials_generate_messages_lisp _mrsd_ros_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrsd_ros_tutorials_genlisp)
add_dependencies(mrsd_ros_tutorials_genlisp mrsd_ros_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrsd_ros_tutorials_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mrsd_ros_tutorials
  "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrsd_ros_tutorials
)
_generate_srv_py(mrsd_ros_tutorials
  "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrsd_ros_tutorials
)

### Generating Module File
_generate_module_py(mrsd_ros_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrsd_ros_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mrsd_ros_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mrsd_ros_tutorials_generate_messages mrsd_ros_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/SaveData.srv" NAME_WE)
add_dependencies(mrsd_ros_tutorials_generate_messages_py _mrsd_ros_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jin/ros/apriltag_size/src/mrsd_ros_tutorials/srv/kinect_apriltag_sr.srv" NAME_WE)
add_dependencies(mrsd_ros_tutorials_generate_messages_py _mrsd_ros_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrsd_ros_tutorials_genpy)
add_dependencies(mrsd_ros_tutorials_genpy mrsd_ros_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrsd_ros_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrsd_ros_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrsd_ros_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mrsd_ros_tutorials_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(mrsd_ros_tutorials_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrsd_ros_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrsd_ros_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mrsd_ros_tutorials_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(mrsd_ros_tutorials_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrsd_ros_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrsd_ros_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrsd_ros_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(mrsd_ros_tutorials_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(mrsd_ros_tutorials_generate_messages_py sensor_msgs_generate_messages_py)
