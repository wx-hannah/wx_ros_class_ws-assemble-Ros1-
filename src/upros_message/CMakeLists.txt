cmake_minimum_required(VERSION 3.0.2)
project(upros_message)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  actionlib
  actionlib_msgs
  message_generation
  dynamic_reconfigure
)

add_message_files(
  DIRECTORY msg
  FILES
  SingleServo.msg
  MultipleServo.msg
  MyMessage.msg
  TagCommand.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  ArmPosition.srv
  MyServiceMsg.srv
)

add_action_files(
  DIRECTORY action
  FILES
  CoreMove.action
  MyAction.action
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  actionlib_msgs
)

generate_dynamic_reconfigure_options(cfg/Tutorials.cfg)

# 这里什么都不要写！！！
catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)