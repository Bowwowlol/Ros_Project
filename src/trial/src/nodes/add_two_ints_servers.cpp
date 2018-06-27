#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Float32.h>

const float k_p_velocity(9);
const float k_p_angular(5);

float turtle1_x(0.0);
float turtle1_y(0.0);
float turtle1_theta(0.0);

float turtle2_x(0.0);
float turtle2_y(0.0);
float turtle2_theta(0.0);

void tur1_pose_Callback(const turtlesim::PoseConstPtr& msg)
{
  ROS_DEBUG_NAMED("tur1info","Turtle 1 Positiob x:%f, y:%f, theta:%f", msg->x, msg->y, msg->theta);
  turtle1_x = msg->x;
  turtle1_y = msg->y;
  turtle1_theta = msg->theta;
}

void tur2_pose_Callback(const turtlesim::PoseConstPtr& msg)
{
  ROS_DEBUG_NAMED("tur2info","Turtle 2 Positiob x:%f, y:%f, theta:%f", msg->x, msg->y, msg->theta);
  turtle2_x = msg->x;
  turtle2_y = msg->y;
  turtle2_theta = msg->theta;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "turtle_controller");
  ros::NodeHandle nh;
  ros::Subscriber sub_tur1 = nh.subscribe("/turtle1/pose",100,tur1_pose_Callback);
  ros::Subscriber sub_tur2 = nh.subscribe("/turtle2/pose",100,tur2_pose_Callback);

  ros::Publisher pub_tur2 = nh.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel",100);

  ros::Publisher pub_vel = nh.advertise<std_msgs::Float32>("/turtle2/error_angular",100);

  ros::Rate r(30);
  while(ros::ok())
  {
    geometry_msgs::Twist cmd;
    std_msgs::Float32 data;

    float error_dist;
    error_dist = sqrt((turtle1_x-turtle2_x)*(turtle1_x-turtle2_x)+(turtle1_y-turtle2_y)*(turtle1_y-turtle2_y));

    float error_theta;
    error_theta = atan2(sin(atan2((turtle1_y-turtle2_y),(turtle1_x-turtle2_x))-turtle2_theta),cos(atan2((turtle1_y-turtle2_y),(turtle1_x-turtle2_x))-turtle2_theta));

    data.data = error_dist;

    float output_vel;
    float output_angular;
    output_vel = (error_dist-1) * k_p_velocity;
    output_angular = error_theta * k_p_angular;

    cmd.linear.x = output_vel;
    cmd.angular.z = output_angular;

    pub_tur2.publish(cmd);
    pub_vel.publish(data);

    ros::spinOnce();
    r.sleep();

  }
  return 0;
}
