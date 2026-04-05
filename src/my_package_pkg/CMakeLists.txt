cmake_minimum_required(VERSION 3.0.2)
project(my_package_pkg)

# 编译选项
add_compile_options(-std=c++11)

# 1. 查找所有依赖包（合并两个文件的所有依赖）
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  dynamic_reconfigure
  geometry_msgs
  tf2_ros
  upros_message
)

# 2. 动态参数配置
generate_dynamic_reconfigure_options(
  cfg/Tutorials.cfg
)

# 3. 声明包依赖（包含 upros_message）
catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs dynamic_reconfigure geometry_msgs tf2_ros upros_message
)

# 4. 头文件路径
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

# 5. 第二个文件的所有 C++ 节点
add_executable(ros_sonic_node src/ros_sonic.cpp)
target_link_libraries(ros_sonic_node ${catkin_LIBRARIES})

add_executable(ros_bump_node src/ros_bump.cpp)
target_link_libraries(ros_bump_node ${catkin_LIBRARIES})

add_executable(ros_imu_node src/ros_imu.cpp)
target_link_libraries(ros_imu_node ${catkin_LIBRARIES})

add_executable(ros_param src/ros_param.cpp)
target_link_libraries(ros_param ${catkin_LIBRARIES})

add_executable(dynamic_reconfigure_node src/dynamic_reconfigure.cpp)
add_dependencies(dynamic_reconfigure_node ${PROJECT_NAME}_gencfg)
target_link_libraries(dynamic_reconfigure_node ${catkin_LIBRARIES})

add_executable(ros_dynamic_speed_node src/ros_dynamic_speed.cpp)
add_dependencies(ros_dynamic_speed_node my_package_pkg_gencfg)
target_link_libraries(ros_dynamic_speed_node ${catkin_LIBRARIES})

add_executable(ros_log src/ros_log.cpp)
target_link_libraries(ros_log ${catkin_LIBRARIES})

add_executable(tag_grab_node src/tag_grab.cpp)
target_link_libraries(tag_grab_node ${catkin_LIBRARIES})

# 6. 第一个文件追加的功能节点（完整合并）
add_executable(ros_publisher_node src/ros_publisher.cpp)
target_link_libraries(ros_publisher_node ${catkin_LIBRARIES})

add_executable(ros_subscriber_node src/ros_subscriber.cpp)
target_link_libraries(ros_subscriber_node ${catkin_LIBRARIES})

add_executable(move_forward src/move_forward.cpp)
target_link_libraries(move_forward ${catkin_LIBRARIES})

add_executable(odom_move src/odom_move.cpp)
target_link_libraries(odom_move ${catkin_LIBRARIES})

add_dependencies(tag_grab_node ${catkin_EXPORTED_TARGETS} ${${PROJECT_NAME}_gencpp})

include_directories(include ${catkin_INCLUDE_DIRS})
