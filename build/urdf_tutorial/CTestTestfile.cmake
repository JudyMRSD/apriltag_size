# CMake generated Testfile for 
# Source directory: /home/harp/SaveData/Jin/apriltag_size/src/urdf_tutorial
# Build directory: /home/harp/SaveData/Jin/apriltag_size/build/urdf_tutorial
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_urdf_tutorial_roslaunch-check_launch "/home/harp/SaveData/Jin/apriltag_size/build/urdf_tutorial/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/harp/SaveData/Jin/apriltag_size/build/urdf_tutorial/test_results/urdf_tutorial/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/harp/SaveData/Jin/apriltag_size/build/urdf_tutorial/test_results/urdf_tutorial" "/opt/ros/indigo/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/harp/SaveData/Jin/apriltag_size/build/urdf_tutorial/test_results/urdf_tutorial/roslaunch-check_launch.xml' '/home/harp/SaveData/Jin/apriltag_size/src/urdf_tutorial/launch' ")
subdirs(gtest)