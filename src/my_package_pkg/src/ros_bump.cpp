#include "ros/ros.h"
#include "std_msgs/Int16MultiArray.h"
#include "geometry_msgs/Twist.h"

// 全局变量保存上一帧最前方传感器状态（假设最前方是索引0的传感器）
bool last_front_triggered = false;
ros::Publisher cmd_vel_pub;
// 🌟 核心标志位：一旦触发，锁定为true，永不自动释放
bool is_bump_locked = false;

void bumpCallback(const std_msgs::Int16MultiArray::ConstPtr& msg)
{
    // 获取当前前方传感器状态 (data[0] != 0 表示触发)
    bool current_front_triggered = (msg->data[1] != 0);
    ROS_INFO("Bump Sensor Data Received:");
    for(int i = 0; i < msg->data.size(); ++i)
    {
        ROS_INFO("Sensor %d: %s", i, msg->data[i] ? "Triggered" : "Not Triggered");
    }
    // 🌟 关键逻辑：如果还没锁定，且现在触发了
    if (!is_bump_locked && current_front_triggered)
    {
        is_bump_locked = true; // 锁定标志位，之后永远不会再进入这里
        ROS_WARN("Bumper triggered! LOCKED and moving BACKWARD.");
    }
    // 无论传感器怎么变，只要是锁定状态，就一直后退
    if (is_bump_locked)

    {
        ROS_WARN("Front bumper triggered! Sending backward velocity...");
        
        geometry_msgs::Twist cmd_vel;
        cmd_vel.linear.x = -0.2;  // 后退线速度（负值表示后退）
        cmd_vel.angular.z = 0.0;  // 保持方向不变
        cmd_vel_pub.publish(cmd_vel);
    }
    else
    {
        geometry_msgs::Twist cmd_vel;
        cmd_vel.linear.x = 0.2;  // ahead速度（负值表示后退）
        cmd_vel.angular.z = 0.0;  // 保持方向不变
        cmd_vel_pub.publish(cmd_vel);    
    }

    // 更新上一帧状态
    last_front_triggered = current_front_triggered;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "bump_sensor_subscriber");
    ros::NodeHandle n;

    // 订阅碰撞传感器话题
    ros::Subscriber sub = n.subscribe("/robot/bump_sensor", 1000, bumpCallback);
    // 发布速度控制话题（标准底盘控制话题）
    cmd_vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    ros::spin();
    return 0;
}
