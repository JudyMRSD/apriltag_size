save_image:
roslaunch openni2_launch openni2.launch 
source devel/setup.bash
rosrun mrsd_ros_tutorials subscribe_depth_node
rosrun mrsd_ros_tutorials perception_data 

