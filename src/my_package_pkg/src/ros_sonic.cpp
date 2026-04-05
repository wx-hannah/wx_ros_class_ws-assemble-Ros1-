#include <ros/ros.h>
#include <sensor_msgs/Range.h>
#include <geometry_msgs/Twist.h>

// 全局标志位：一旦触发避障就锁定，持续后退
bool is_tof_locked = false;
ros::Publisher cmd_vel_pub;

// 左侧传感器回调（保留原输出）
void rangeCallback1(const sensor_msgs::Range::ConstPtr& msg) {
    ROS_INFO("Distance Left: %f", msg->range);
}

// 最前方传感器回调（核心避障逻辑）
void rangeCallback2(const sensor_msgs::Range::ConstPtr& msg) {
    ROS_INFO("Distance Front: %f", msg->range);
    
    // 🌟 流程图逻辑：距离 < 0.4 米 且 未锁定 → 触发避障并锁定
    if (!is_tof_locked && msg->range < 0.4) {
        is_tof_locked = true;
        ROS_WARN("Front TOF sensor triggered! LOCKED and moving BACKWARD.");
    }

    // 无论传感器如何变化，只要锁定就持续发布后退速度
    if (is_tof_locked) {
        geometry_msgs::Twist cmd_vel;
        cmd_vel.linear.x = -0.2;  // 后退线速度（负值表示后退）
        cmd_vel.angular.z = 0.0;  // 保持方向不变
        cmd_vel_pub.publish(cmd_vel);
    }
    else
    {
            geometry_msgs::Twist cmd_vel;
        cmd_vel.linear.x = 0.2;  // 后退线速度（负值表示后退）
        cmd_vel.angular.z = 0.0;  // 保持方向不变
        cmd_vel_pub.publish(cmd_vel);
        }
}

// 右侧传感器回调（保留原输出）
void rangeCallback3(const sensor_msgs::Range::ConstPtr& msg) {
    ROS_INFO("Distance Right: %f", msg->range);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "range_subscriber");
    ros::NodeHandle nh;

    // 订阅三个超声/TOF传感器话题
    ros::Subscriber sub_1 = nh.subscribe<sensor_msgs::Range>("/ul/sensor1", 10, rangeCallback1);
    ros::Subscriber sub_2 = nh.subscribe<sensor_msgs::Range>("/ul/sensor2", 10, rangeCallback2);
    ros::Subscriber sub_3 = nh.subscribe<sensor_msgs::Range>("/ul/sensor3", 10, rangeCallback3);

    // 发布速度控制话题（标准底盘控制话题）
    cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);

    ros::spin();
    return 0;
}
