# 第一周第二周：主题与消息实验 & 服务实验
使用ROS2工程文件详见：
https://github.com/wx-hannah/Topic-Service

# 以下是另一个ros2工程文件的readme！！！！
# 实验一：主题与消息实验——ros2！！
#5.1标准消息
cd ~/wx_ros_class_ws

#先清理之前的编译缓存（可选，但建议执行）
colcon build --cmake-clean-first --packages-select my_class_pkg

#加载环境变量
source install/setup.bash

#运行发布者命令
ros2 run my_class_pkg ros_publisher_node

#订阅话题：新建终端
source ~/wx_ros_class_ws/install/setup.bash
ros2 topic echo /my_topic


#5.2 订阅话题
#进入工作空间根目录
cd ~/wx_ros_class_ws

#编译目标功能包（包含发布者+订阅者）
colcon build --packages-select my_class_pkg

#加载环境变量
source install/setup.bash

#第一步，终端1  发布者节点
source ~/wx_ros_class_ws/install/setup.bash
ros2 run my_class_pkg ros_publisher_node

#第二步，终端2 运行订阅者节点
source ~/wx_ros_class_ws/install/setup.bash
ros2 run my_class_pkg ros_subscriber_node

#5.3自定义消息
#5.3.1自定义消息发布
#回到工作空间根目录（确保路径正确）
cd ~/wx_ros_class_ws

#加载环境变量（必须执行，且要执行完整路径）
source install/setup.bash

#再次运行节点
ros2 run my_class_pkg msg_publisher_node


#5.3.2，运行自定义消息的订阅者节点
cd ~/wx_ros_class_ws

#加载环境变量
source install/setup.bash

#建立新终端， 加载环境
source ~/wx_ros_class_ws/install/setup.bash

#运行发布者节点
ros2 run my_class_pkg msg_publisher_node

#5.5 实现 Launch 文件启动节点
ros2 launch my_class_pkg bringup_topic_launch.py

# 实验二：服务和动作——ros2！！

#5.2实现ros服务的传递
cd ~/wx_ros_class_ws

#建立新终端， 加载环境
source source ~/ros_class_ws/install/setup.bash 

#启动服务器节点
ros2 run my_class_pkg ros_server_node

#建立新终端， 加载环境
source ~/ros_class_ws/install/setup.bash 

#启动客户端节点
ros2 run my_class_pkg ros_client_node

#5.2实现ros动作的传递
cd ~/wx_ros_class_ws

#启动服务节点

source ~/wx_ros_class_ws/install/setup.bash

ros2 run my_class_pkg ros_action_server.py

#启动动作节点

source ~/wx_ros_class_ws/install/setup.bash
ros2 run my_class_pkg ros_action_client.py



# 从以下开始是本工程文件ros1的readme！！！！！
# 第一周：底盘控制与里程计实操
#小车走1*1方格
第一节课第二个实验 2026.3.7

#新终端启动底盘
cd upros_class_code
catkin_make
source devel/setup.bash
roslaunch upros_bringup bringup_w2a.launch

#编译此节点
cd wx_ros_class_ws
catkin_make
source devel/setup.bash
roscd my_package_pkg

#1、开环控制走方格
打开新终端
rosrun my_package_pkg move_forward
#2、闭环控制走方格
#打开新终端
rosrun my_package_pkg odom_move


# 第二周：机器人多传感器数据采集
#进入工作空间
cd wx_ros_class_ws
source devel/setup.bash
roscd my_package_pkg

#新终端 启动硬件
cd upros_class_code
source devel/setup.bash
roslaunch upros_bringup bringup_w2a.launch

#1、启动碰撞传感器避障
rosrun my_package_pkg ros_bump_node

#2、启动超声波避障
rosrun my_package_pkg ros_sonic_node

#3、启动imu转弯
rosrun my_package_pkg ros_imu_node



# 第三周：可视化调试工具——rqt、rviz与Gazebo入门
# 实验一：参数与动态参数实验
#进入环境
cd wx_ros_class_ws
source devel/setup.bash
roscd my_package_pkg

#启动ros核心
roscore

#5.1读取参数 (c++) 
rosrun my_package_pkg ros_param
#launch文件启动
roslaunch my_package_pkg parameter.launch

#5.3配置动态参数并应用
rosrun my_package_pkg dynamic_reconfigure_node

#继续利用可视化参数配置工具来修改参数
rosrun rqt_reconfigure rqt_reconfigure


#5.4动态调整小乌龟速度
rosrun my_package_pkg ros_dynamic_speed_node
#启动 ROS 小乌龟
rosrun turtlesim turtlesim_node

#启动动态参数图形化工具
rosrun rqt_reconfigure rqt_reconfigure

#5.5动态配置ROS机器人参数
先要把ros_dynamic_speed_node.cpp文件中把/turtle1/cmd_vel删去turtle1变成/cmd_vel之后，重新编译
#进入工作目录编译
cd wx_ros_class_ws
catkin_make

#新建终端，启动底盘
cd upros_class_code
source devel/setup.bash
roslaunch upros_bringup bringup_w2a.launch

#启动动态参数节点
rosrun my_package_pkg ros_dynamic_speed_node



# 第四周：URDF模型与Gazebo仿真
# 编译与运行 进入工作空间目录并进行编译：
cd ~/wx_ros_class_ws 
catkin_make --pkg upros_message
catkin_make 
source devel/setup.bash

#（如果Cmake报错 重新生成b）

1.清理错误的编译缓存（必须）
rm -rf build devel
2.删掉刚才生成错位置的软链接
rm src/CMakeLists.txt
rm CMakeLists.txt
4.正确初始化工作空间（在根目录执行！）
catkin_init_workspace
5.编译
catkin_make

#1、启动自己机器人 Gazebo 仿真环境：
roslaunch wx_robot_description gazebo.launch

#启动键盘控制指令，控制小车移动
rosrun teleop_twist_keyboard teleop_twist_keyboard.py

#自己的机器人小车urdf启动
roslaunch wx_robot_description display.launch
#自己的机器人小车xarco启动
roslaunch wx_robot_description display_xacro.launch


#2、机械臂启动
roslaunch wx_robot_description w2a_arm.launch

#rqt控制关节
rosrun rqt_joint_trajectory_controller rqt_joint_trajectory_controller





# 第五周:ROS中的图像处理与视觉跟随

启动小车底盘
cd upros_class_code
source devel/setup.bash
roslaunch upros_bringup bringup_w2a.launch
实验一、根据标定的颜色值，开展视觉巡线
rosrun upros_cv color_choose.py标记颜色
cd wx_ros_class_ws
catkin_make
source devel/setup.bash
rosrun my_package_pkg follow_line.py
新终端开始寻线rostopic pub -1 /enable_move std_msgs/Int16 "data: 1"

实验二、基于手势识别的机器人控制实验
rosrun my_package_pkg gesture_movement.py
新终端rqt_image_view，打开可视化界面然后订阅/image_result

实验三、视觉跟踪实验
rosrun my_package_pkg apriltag_follow.py
新终端rqt_image_view，打开可视化界面然后订阅/image_result看见机器人跟随物块中心移动

#实验四、视觉抓取实验
#新终端运行节点
cd upros_class_code
source devel/setup.bash
roslaunch upros_arm recognize_apriltag.launch
rosrun my_package_pkg tag_grab_node