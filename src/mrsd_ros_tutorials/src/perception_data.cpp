//client: process data got from subscribe_pc_node.cpp

#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

//pcl
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl_ros/point_cloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>

#include "mrsd_ros_tutorials/SaveData.h"

//for segmentation
#include <iostream>
#include <pcl/point_types.h>
#include <pcl/filters/passthrough.h>

//save point cloud 
void save_pcd(std::string pc_name, const pcl::PointCloud<pcl::PointXYZ>& input_pc)
{
  
  pcl::PCDWriter writer;
  pc_name = "hard_pc"+ pc_name +".pcd";
  writer.writeBinary(pc_name, input_pc);
  ROS_INFO("[Perception] Save PCD file ");

}

//segment everyting not belong to the bin
//bin size: ~80x55x20 cm
void segment_bin(const pcl::PointCloud<pcl::PointXYZ>::Ptr& xyz_pc_input)
{
  
 // Create the filtering object
  pcl::PassThrough<pcl::PointXYZ> pass;
  pass.setInputCloud (xyz_pc_input);
  pass.setFilterFieldName ("z");
  pass.setFilterLimits (0.0, 1.0);
  //pass.setFilterLimitsNegative (true);
  pass.filter (*xyz_pc_input);
}
//KdTree 

int main(int argc, char **argv)
{
  ros::init(argc, argv, "data_processing_client");
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<mrsd_ros_tutorials::SaveData>("ImageConverter");
  mrsd_ros_tutorials::SaveData srv;
  int item_number;
  std::cin>>item_number;
  
  srv.request.item_number = item_number;
  std::cout << "("<< srv.request.item_number<< ")\n";


  sensor_msgs::PointCloud2 ros_msg_pc;
  //pointer to the point cloud
  //pcl::PointCloud<pcl::PointXYZRGB>::Ptr kinect_color_pc

  //convert from ros msg to point cloud
  pcl::PointCloud<pcl::PointXYZ>::Ptr xyz_pc_input;
  pcl::fromROSMsg(ros_msg_pc, *xyz_pc_input);
  
  //pcl::PointCloud<pcl::PointXYZ>::Ptr point_cloud_ptr;

  //save image when button is pressed
  if(item_number!=0){
        
        srv.request.item_number = item_number; // todo
        
        ros_msg_pc = srv.response.point_cloud;
        
        /*
        //convert PCLPointCloud2::Ptr to PointCloud<pcl::pointxyz>
        pcl::PointCloud<pcl::PointXYZ>::Ptr xyz_pc_input (new pcl::PointCloud<pcl::PointXYZ>());
        pcl::fromPCLPointCloud2(kinect_color_pc, *(xyz_pc_input));
        */
        bool res = client.call(srv);
        //segment pcd and save
        std::string item_name = std::to_string(item_number);
        segment_bin(xyz_pc_input);
        save_pcd(item_name, *xyz_pc_input);

        ros::Duration(1.0).sleep();
      }
  //save the pcd and corresponding tf
  




}
