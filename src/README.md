workspace that combined AR_tag and rviz_scene



need to catkin_make common_ws (contains iai_kinect2) before run the following
 
roslaunch kinect2_bridge kinect2_bridge.launch
roslaunch urdf_tutorial stl_display.launch
------------------------------
------------------------------
test segmentation
rosrun mrsd_ros_tutorials perception_data 
rosrun mrsd_ros_tutorials subscribe_pc_node 


-------------
ros msg file for point cloud 
https://github.com/cheyenlu/plaid_apc/tree/master/plaid_msgs/msg

pass pointer? pass through filter
