#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_datatypes.h>
#include <cmath>

// 全局变量
ros::Publisher cmd_vel_pub;
double initial_yaw = 0.0;
double accumulated_yaw = 0.0;
double last_yaw = 0.0;
bool is_first_imu = true;

// 角度标准化
double normalize_angle(double angle) {
    while (angle > M_PI) angle -= 2 * M_PI;
    while (angle < -M_PI) angle += 2 * M_PI;
    return angle;
}

// IMU回调
void imu_callback(const sensor_msgs::Imu::ConstPtr& imu_msg) {
    // 1. 四元数转欧拉角
    geometry_msgs::Quaternion orientation = imu_msg->orientation;
    tf::Quaternion quat;
    tf::quaternionMsgToTF(orientation, quat);
    double roll, pitch, current_yaw;
    tf::Matrix3x3(quat).getRPY(roll, pitch, current_yaw);
    current_yaw = normalize_angle(current_yaw);

    // 2. 初始化
    if (is_first_imu) {
        initial_yaw = current_yaw;
        last_yaw = current_yaw;
        is_first_imu = false;
        ROS_WARN("Initial yaw recorded: %.2f rad (%.2f°)",
                 initial_yaw, initial_yaw * 180.0 / M_PI);
        return;
    }

    // 3. 计算角度增量，累计旋转
    double yaw_delta = normalize_angle(current_yaw - last_yaw);
    accumulated_yaw += yaw_delta;
    last_yaw = current_yaw;

    // 转角度制
    double accumulated_yaw_deg = accumulated_yaw * 180.0 / M_PI;
    double current_yaw_deg = current_yaw * 180.0 / M_PI;

    // 4. 打印数据
    ROS_INFO("=== IMU Data ===");
    ROS_INFO("Linear acc: x=%.2f, y=%.2f, z=%.2f",
             imu_msg->linear_acceleration.x, imu_msg->linear_acceleration.y, imu_msg->linear_acceleration.z);
    ROS_INFO("Angular vel: x=%.2f, y=%.2f, z=%.2f",
             imu_msg->angular_velocity.x, imu_msg->angular_velocity.y, imu_msg->angular_velocity.z);
    ROS_INFO("Current yaw: %.2f° | Total spin angle: %.2f°",
             current_yaw_deg, accumulated_yaw_deg);

    // ===================== 核心修改：连续自旋 =====================
    geometry_msgs::Twist cmd_vel;
    // 持续发布旋转速度，永不停止
    cmd_vel.angular.z = 0.5;  // 顺时针为负，逆时针为正
    cmd_vel_pub.publish(cmd_vel);
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "imu_continuous_spin_node");
    ros::NodeHandle nh;

    ros::Subscriber imu_sub = nh.subscribe("/imu/data", 10, imu_callback);
    cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);

    ROS_INFO("Continuous spin node started! Robot will spin forever...");
    ros::spin();
    return 0;
}