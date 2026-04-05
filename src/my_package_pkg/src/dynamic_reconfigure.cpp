#include <ros/ros.h>
#include <dynamic_reconfigure/server.h>
#include <my_package_pkg/TutorialsConfig.h>

void callback(my_package_pkg::TutorialsConfig &config, uint32_t level)
{
  // 只打印你 cfg 文件里实际存在的参数
  // 假设你 cfg 里有 double_param 和 my_param，请根据实际情况修改
  ROS_INFO("Reconfigure Request: %f", config.double_param); 
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "dynamic_tutorials");
  ros::NodeHandle nh;

  dynamic_reconfigure::Server<my_package_pkg::TutorialsConfig> server;
  dynamic_reconfigure::Server<my_package_pkg::TutorialsConfig>::CallbackType f;

  f = boost::bind(&callback, _1, _2);
  server.setCallback(f);

  ROS_INFO("Spinning node");
  ros::spin();
  return 0;
}
