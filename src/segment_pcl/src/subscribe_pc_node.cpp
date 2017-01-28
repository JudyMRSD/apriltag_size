

#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

/** @brief Handles image pub/sub and painting circles (demo of a in-source class)
*/
class ImageConverter
{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  
  image_transport::Subscriber kinect_img_sub;

public:
  int i = 0;

  ImageConverter()
    : it_(nh_)
  {
    
    kinect_img_sub = it_.subscribe("/kinect2/hd/image_color", 1, &ImageConverter::imageCb, this);
    

  }

  ~ImageConverter()
  {
    ;
  }
 
  void imageCb(const sensor_msgs::ImageConstPtr& msg)
  {

    cv_bridge::CvImagePtr kinect_color_raw;

 
    try
    {

      kinect_color_raw = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }



    do_really_cool_stuff(kinect_color_raw);

     
  }

     
  void do_really_cool_stuff(cv_bridge::CvImagePtr kinect_color_raw)
  {

    i=i+1;

//save images

    std::string name = std::to_string(i); 
    name = "hard"+ name + ".jpg";
	  cv::imwrite(name, kinect_color_raw->image);
    std::cout<<i<<std::endl;

  }
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;
  
  while(ros::ok())
    {
        ros::Duration(10).sleep();
        ros::spinOnce();
    }
    
  
  return 0;
}
