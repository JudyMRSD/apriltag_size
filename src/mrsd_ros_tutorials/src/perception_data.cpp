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

//kd tree to find the nearest neignbor 
#include <pcl/search/kdtree.h>
#include <pcl/kdtree/kdtree_flann.h>
//debug
#include <typeinfo>

//save point cloud 
void save_pcd(std::string pc_name, const pcl::PointCloud<pcl::PointXYZRGB>::Ptr& input_pc)
{
  

  pcl::PCDWriter writer;
  std::cout << "start pcd writer"<< std::endl;
  pc_name = "hard_pc"+ pc_name +".pcd";
  std::cout << pc_name<< std::endl;
  writer.writeBinary(pc_name, *input_pc);
  std::cout << "write binary"<< std::endl;
  ROS_INFO("perception_data.cpp  Save PCD file ");

}

//segment everyting not belong to the bin
//bin size: ~80x55x20 cm
//the input point cloud is modified 


void segment_bin(pcl::PointCloud<pcl::PointXYZRGB>::Ptr& xyz_pc_ptr)
{
  
 // Create the filtering object
  pcl::PassThrough<pcl::PointXYZRGB> pass;
  pass.setInputCloud (xyz_pc_ptr);
  pass.setFilterFieldName ("z");
  pass.setFilterLimits (0.0, 1.0);
  //pass.setFilterLimitsNegative (true);
  pass.filter (*xyz_pc_ptr);
}

//KdTree 

int main(int argc, char **argv)
{
  ros::init(argc, argv, "data_processing_client");
  
  ros::NodeHandle n;
  
  ros::ServiceClient client = n.serviceClient<mrsd_ros_tutorials::SaveData>("ImageConverter");
  mrsd_ros_tutorials::SaveData srv;

  int item_number;
  std::cout <<"please put in item number "<<std::endl;
  std::cin>>item_number;
  
  srv.request.item_number = item_number;
  std::cout << "srv request item number:"<< srv.request.item_number<< std::endl;


  sensor_msgs::PointCloud2 ros_msg_pc;
 
  //convert from ros msg to point cloud
  pcl::PointCloud<pcl::PointXYZRGB>::Ptr xyz_pc_ptr;
  xyz_pc_ptr = pcl::PointCloud<pcl::PointXYZRGB>::Ptr(new pcl::PointCloud<pcl::PointXYZRGB>);
  std::cout << "create pointer "<< std::endl;
  
  

  //save image when button is pressed
  if(item_number!=0){
        
        srv.request.item_number = item_number; // todo
        bool res = client.call(srv);

        ros_msg_pc = srv.response.point_cloud;
        

        std::cout << "receive sensor mesage"<< std::endl;

        std::cout <<"before segment address"<<&ros_msg_pc<< std::endl;
        
        pcl::fromROSMsg(ros_msg_pc, *xyz_pc_ptr);
       
        //segment pcd and save
    
        
        segment_bin(xyz_pc_ptr);
        std::cout << "finish segment"<< std::endl;
        std::cout <<"pinter address"<< xyz_pc_ptr<< std::endl;

        save_pcd("segmented", xyz_pc_ptr);
        std::cout << "save segment"<< std::endl;

        ros::Duration(1.0).sleep();
      }
  




}
