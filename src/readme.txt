

plaid_cnn_integration/src/plaid_apc/plaid_launch
./slave
./reset





terminal 1: 
>>roslaunch openni2_launch openni2.launch 
>>rosrun image_view image_view image:=/camera/rgb/image_raw

terminal 2:
>>cd ~/SaveData/Jin/apriltag_size 
>>source devel/setup.bash
>>rosrun mrsd_ros_tutorials subscribe_depth_node

terminal 3: 
>>cd ~/SaveData/Jin/apriltag_size 
>>source devel/setup.bash
>>rosrun mrsd_ros_tutorials perception_data 
Type item name in the window, use the following naming convention, Files will be saved in /home/harp/SaveData/Jin/apriltag_size   

s00001_a01_p01
s00001: image index
a01:    re-arrangement of same objects in the bin    a01~a06
p01:    arm pose index				     p01~p04	

for example, we have 5 objects in the bin, and we are taking the 107th image, using topdown view arm pose

The file name is : s00107_a01_p01 

After taking this image, we rearrange items in tote, the file name becomes s00108_a02_p01
