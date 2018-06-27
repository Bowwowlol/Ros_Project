#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <cv_bridge/cv_bridge.h>

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  try
  {
    cv::Mat img;
    cv::Mat gray;
    cv::Mat canny;
    img = cv_bridge::toCvShare(msg, "bgr8")->image;
    cv::cvtColor(img, gray, CV_BGR2GRAY);
    cv::threshold(gray, gray, 128, 255, 0);
    cv::Canny(gray, canny, 100, 200);


    cv::imshow("view", canny);
    cv::waitKey(30);
  }
  catch(cv_bridge::Exception& e)
  {
    ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
  }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "opencv_test_listener");
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();
  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("camera/image", 1, imageCallback);
  ros::spin();
  cv::destroyWindow("view");


}
