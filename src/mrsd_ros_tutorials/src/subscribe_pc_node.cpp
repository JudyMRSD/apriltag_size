
//service, get rgbd data from kinect 
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
#include <pcl_ros/transforms.h>
#include <sensor_msgs/PointCloud2.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>

//service 
#include "mrsd_ros_tutorials/SaveData.h"
//tf transform listener 
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
/*
//tf transform 
#include <ros/ros.h>
#include <ros/forwards.h>
#include <ros/single_subscriber_publisher.h>
#include <sensor_msgs/Image.h>
#include <image_transport/image_transport.h>
#include <visualization_msgs/Marker.h>
#include <opencv/cv.h>
#include <opencv/highgui.h>
#include <cv_bridge/cv_bridge.h>


#include <Eigen/Core>
#include <Eigen/Geometry>

#include <visualization_msgs/MarkerArray.h>
#include "yaml-cpp/yaml.h"
#include <sstream>
#include <fstream>

#include <boost/unordered_set.hpp>
#include <boost/unordered_map.hpp>
#include <boost/make_shared.hpp>


#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <tf/transform_datatypes.h>
*/

/** @brief Handles image pub/sub and painting circles (demo of a in-source class)
*/
class ImageConverter
{
  ros::NodeHandle nh;
  image_transport::ImageTransport it_;
//subscriber to rgb img and point cloud
  image_transport::Subscriber kinect_img_sub;
  ros::Subscriber kinect_pc_sub;
//  ros::Subscriber apriltag_sub;

//create pointer to rgb image and point cloud

  cv_bridge::CvImagePtr kinect_color_raw;
  pcl::PointCloud<pcl::PointXYZRGB>::Ptr kinect_color_pc;


 // pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_transformed;
 // cloud_transformed = pcl::PointCloud<pcl::PointXYZRGB>::Ptr(new pcl::PointCloud<pcl::PointXYZRGB>);

  sensor_msgs::PointCloud2 ros_pc;
  sensor_msgs::PointCloud2 tr_ros_pc;

//PCD writer
  pcl::PCDWriter writer;

//the service is created and advertised over ROS
  ros::ServiceServer service;
//this service provides transformed point cloud 
  ros::ServiceServer kinect_apriltag_sr;

  //listen to the transform broadcasted using apriltag
  const tf::TransformListener tf_listener;
  tf::StampedTransform tf_apriltag;
public:

  ImageConverter()
    : it_(nh)
  {
    
    kinect_img_sub = it_.subscribe("/kinect2/hd/image_color", 1, &ImageConverter::imageCb, this);
    kinect_pc_sub =  nh.subscribe("/kinect2/hd/points", 1, &ImageConverter::kinectPointCloudCB, this);
    kinect_color_pc = pcl::PointCloud<pcl::PointXYZRGB>::Ptr(new pcl::PointCloud<pcl::PointXYZRGB>);
    //apriltag_sub = nh.subscribe("/apriltags/detections", 1, &ImageConverter::apriltagCB, this);
    kinect_apriltag_sr = nh.advertiseService("ImageConverter", &ImageConverter::transformCB, this);
    service = nh.advertiseService("ImageConverter", &ImageConverter::saveDataCB, this);

  }

  ~ImageConverter()
  {
    ;
  }
 
  void imageCb(const sensor_msgs::ImageConstPtr& msg )
  {
     kinect_color_raw = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
     ROS_INFO("[Perception] Get Kinect Image Data ");

  }

  void kinectPointCloudCB(const sensor_msgs::PointCloud2ConstPtr& cloud_msg){
     pcl::fromROSMsg(*cloud_msg, *kinect_color_pc);
     ROS_INFO("[Perception] Get Kinect Point Cloud Data");
  }
  //-------------Get transformation matrix ------------------------
  //---------------Transform Point Cloud ---------------------------------------------------
  /*
  void transformCB (pcl::PointCloud<pcl::PointXYZ>::Ptr& Cloud_kinect)
  {
    /*
      tf::TransformListener listener;
      tf::StampedTransform transform;
      try{
        listener.lookupTransform("/turtle2", "/turtle1",
                                 ros::Time(0), transform);
      }
      catch (tf::TransformException &ex) {
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
        continue;
      }
      

  }
*/
  //-------------Transform point cloud origin form kinect camera center to apriltag center ------------
  //listen to transform and convert to eigen matrix
  
  bool transformCB(mrsd_ros_tutorials::SaveData::Request &req, 
    mrsd_ros_tutorials::SaveData::Response &res )

  {

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_transformed (new pcl::PointCloud<pcl::PointXYZRGB>);
    //static tf::TransformBroadcaster br1;
    static tf::TransformBroadcaster br2;
    
    try{
      tf_listener.lookupTransform("apriltag_frame","kinect2_rgb_optical_frame",
                               ros::Time(0), tf_apriltag);
      std::cout << "22.1"<< std::endl;
    }
    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
      std::cout << "22.2"<< std::endl;
    }
    std::cout << "23"<< std::endl;
    //transform the point cloud
    std::cout<<kinect_color_pc->points.size()<<std::endl;
    

    std::cout<<cloud_transformed<<std::endl;
    pcl_ros::transformPointCloud ("world", *kinect_color_pc,*cloud_transformed, tf_listener);
    std::cout << "24"<< std::endl;
    //br1.sendTransform(tf::StampedTransform(tf_apriltag, ros::Time::now(), "kinect2_rgb_optical_frame","world"));
    //br2.sendTransform(tf::StampedTransform(tf_apriltag, ros::Time::now(), "transformed_apriltag_frame","world"));
    //std::cout << "25"<< std::endl;
    pcl::toROSMsg(*cloud_transformed, tr_ros_pc);
    std::cout << "26"<< std::endl;
    res.point_cloud = tr_ros_pc;
    std::cout << "27"<< std::endl;
    return true;
  }
  /*
  {
    //listen to the transform broadcasted using apriltag
    tf::TransformListener listener;
    tf::StampedTransform tf_apriltag;
      try{
        listener.lookupTransform("kinect2_rgb_optical_frame","apriltag_frame",
                                 ros::Time(0), tf_apriltag);
      }
      catch (tf::TransformException &ex) {
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
      }
    //convert the 
    
     return true;
                                                    
  }
  */
  
//------------------save data call back ---------------------------------------
 
  bool saveDataCB(mrsd_ros_tutorials::SaveData::Request &req, 
    mrsd_ros_tutorials::SaveData::Response &res )
  {

//file name 
    std::cout << "Save Data request recieved: \n"<< 
           "item_number: "<< req.item_number <<std::endl;
//save images

    std::string name;
    name = req.item_number;
    name = "hard"+ name + ".jpg";
    cv::imwrite(name, kinect_color_raw->image);
    ROS_INFO("[Perception] Save image file ");

    std::string pc_name;
    pc_name = "hard_pc"+ pc_name +".pcd";
    std::cout <<"service address"<< kinect_color_pc<< std::endl;
    writer.writeBinary(pc_name, *kinect_color_pc);
    ROS_INFO("[Perception] Save PCD file ");

    res.status = 1;
    //convert from pcl xyz to sensor_msgs
    pcl::toROSMsg(*kinect_color_pc, ros_pc);
    res.point_cloud = ros_pc;

    return true;

  }
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;

  
  std::cout << "21"<< std::endl;
  


  
 
  while(ros::ok())
    {
        ros::Duration(1).sleep();
        ros::spinOnce();
   //     ic.saveDataCB("1");
    }
    
  
  return 0;
}
