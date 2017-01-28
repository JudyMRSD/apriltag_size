cmake_minimum_required(VERSION 2.8.3)
project(segment_pcl)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11") 
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native")
set(CMAKE_BUILD_TYPE Release) 


find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  geometry_msgs
  image_transport
  roscpp
  rospy
  sensor_msgs
  dynamic_reconfigure
  tf
  pcl_conversions
  pcl_ros
)


find_package(PCL 1.7 REQUIRED)

#generate_dynamic_reconfigure_options(
#  config/box_tf_offsets.cfg
#)

include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)


#add_executable(pcl_seg_node src/pcl_seg_node.cpp)
#target_link_libraries(pcl_seg_node ${catkin_LIBRARIES})

add_executable(subscribe_pc_node src/subscribe_pc_node.cpp)
target_link_libraries(subscribe_pc_node ${catkin_LIBRARIES})


