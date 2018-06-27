#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>

#include <cv_bridge/cv_bridge.h>


#include <iostream>

using namespace std;
using namespace cv;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "opencv_test");
  ros::NodeHandle nh;
  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("camera/image",1);

  Mat img = imread("/home/ubuntu/Downloads/download.jpeg", CV_LOAD_IMAGE_COLOR);
  cvWaitKey(30);
  sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", img).toImageMsg();


  ros::Rate loop_rate(5);
  while(nh.ok())
  {
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }

}
