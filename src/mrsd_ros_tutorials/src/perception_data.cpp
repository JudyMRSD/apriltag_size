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

//tf transform listener 
#include <tf/transform_listener.h>


//------------------------------------save point cloud-------------------------------------------------- 
//for debug and visualization purpose 
void save_pcd(std::string pc_name, const pcl::PointCloud<pcl::PointXYZ>::Ptr& input_pc)
{
  

  pcl::PCDWriter writer;
  std::cout << "start pcd writer"<< std::endl;
  pc_name = "hard_pc"+ pc_name +".pcd";
  std::cout << pc_name<< std::endl;
  writer.writeBinary(pc_name, *input_pc);
  std::cout << "write binary"<< std::endl;
  ROS_INFO("perception_data.cpp  Save PCD file ");

}

//-----------------------------------segment everyting not belong to the bin-----------------------------
//bin size: ~80x55x20 cm
//the input point cloud is modified 

void segment_bin(pcl::PointCloud<pcl::PointXYZ>::Ptr& xyz_pc_ptr)
{
  
 // Create the filtering object
  pcl::PassThrough<pcl::PointXYZ> pass;
  pass.setInputCloud (xyz_pc_ptr);
  pass.setFilterFieldName ("z");
  pass.setFilterLimits (0.0, 1.0);
  //pass.setFilterLimitsNegative (true);
  pass.filter (*xyz_pc_ptr);
}

//---------------------------------load PCD file as pcl point cloud ------------------------------

pcl::PointCloud<pcl::PointXYZ>::Ptr load_pcd(std::string file_path)
{ 
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
  if (pcl::io::loadPCDFile<pcl::PointXYZ> (file_path, *cloud) == -1) //* load the file
  {
    PCL_ERROR ("Couldn't read file test_pcd.pcd \n");
    return cloud;
  }
  pcl::PCLPointCloud2 cloud_blob;
  pcl::io::loadPCDFile ("test_pcd.pcd", cloud_blob);
  pcl::fromPCLPointCloud2 (cloud_blob, *cloud); //* convert from pcl/PCLPointCloud2 to pcl::PointCloud<T>
  return cloud;
}
//-----------------------------------KdTree ---------------------------------------------------
//calculate distanc to the nearest neignbor of the searchPoint among cad model points
int nearest_dist(pcl::PointCloud<pcl::PointXYZ>::Ptr& Cloud_cad, pcl::PointXYZ searchPoint)
{

  int dist = 0;
  //K = 1, only look at the cloeset neighbor
  int K = 1;
  pcl::KdTreeFLANN<pcl::PointXYZ> kdtree;


  std::vector<int> pointIdxNKNSearch(K);
  std::vector<float> pointNKNSquaredDistance(K);

  std::cout << "K nearest neighbor search at (" << searchPoint.x 
            << " " << searchPoint.y 
            << " " << searchPoint.z
            << ") with K=" << K << std::endl;

  
  kdtree.setInputCloud (Cloud_cad);

  if ( kdtree.nearestKSearch (searchPoint, K, pointIdxNKNSearch, pointNKNSquaredDistance) > 0 )
  {
    for (size_t i = 0; i < pointIdxNKNSearch.size (); ++i)
      std::cout << "    "  <<   Cloud_cad->points[ pointIdxNKNSearch[i] ].x 
                << " " << Cloud_cad->points[ pointIdxNKNSearch[i] ].y 
                << " " << Cloud_cad->points[ pointIdxNKNSearch[i] ].z 
                << " (squared distance: " << pointNKNSquaredDistance[i] << ")" << std::endl;
  }
  //When K = 1, only one nearest point is found, and the distance is the first element in the vector
  dist = pointNKNSquaredDistance[0];
  return dist;

}


//---------------Calculate error between two point clouds---------------------------------------------

//Cloud_kinect corresponds to "search point" in the tutorial
//Cloud_cad corresponds to "cloud" in the tutorial

/*
for point in point cloud 
    d =  distance to the nearest point in CAD model
    sum += d
return sum 
*/
int error (pcl::PointCloud<pcl::PointXYZ>::Ptr& Cloud_kinect, pcl::PointCloud<pcl::PointXYZ>::Ptr& Cloud_cad)
{

  pcl::PointXYZ searchPoint;
  int dist = 0;
  int sum = 0;

  for (size_t i = 0; i < Cloud_kinect->points.size(); ++i)
  {
    searchPoint = Cloud_kinect->points[i];
    //ignore NAN
    if (std::isfinite(searchPoint.x) && std::isfinite(searchPoint.y) && std::isfinite(searchPoint.z))
    {
      //API: points - the data array where all points of type PointT are stored.
      dist = nearest_dist(Cloud_cad, searchPoint);
      sum += dist;
    }

  }
  

  return 0;



}

int main(int argc, char **argv)
{
  //initializa ros node 
  ros::init(argc, argv, "data_processing_client");
  ros::NodeHandle n;
  //This node is a client
  //The service node is "ImageConverter", which takes RGB and point cloud raw data from kinect 
  ros::ServiceClient client = n.serviceClient<mrsd_ros_tutorials::SaveData>("ImageConverter");
  //SaveData.srv defines the input and output from the service 
  mrsd_ros_tutorials::SaveData srv;
  //give item_number as input for the service 
  int item_number;
  std::cout <<"please put in item number "<<std::endl;
  std::cin>>item_number;
  srv.request.item_number = item_number;
  sensor_msgs::PointCloud2 ros_msg_pc;
 
  //convert from ros msg to point cloud
  pcl::PointCloud<pcl::PointXYZ>::Ptr xyz_pc_ptr;
  xyz_pc_ptr = pcl::PointCloud<pcl::PointXYZ>::Ptr(new pcl::PointCloud<pcl::PointXYZ>);

  //save image when button is pressed
  if(item_number!=0){

        // take item number as file name, and convert sensor_msgs to pcl point cloud 
        srv.request.item_number = item_number; 
        bool res = client.call(srv);

        ros_msg_pc = srv.response.point_cloud;
        pcl::fromROSMsg(ros_msg_pc, *xyz_pc_ptr);
       
        //segment pcd and save, for debug purpose 
        segment_bin(xyz_pc_ptr);
        save_pcd("segmented", xyz_pc_ptr);

        //error (xyz_pc_ptr, cad_pc_ptr);
        
        load_pcd("");

        ros::Duration(1.0).sleep();
      }
  
}
