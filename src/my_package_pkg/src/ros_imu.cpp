#include <ros/ros.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_datatypes.h>  
#include <cmath>  // 用于fabs、M_PI等数学函数

// 全局变量
ros::Publisher cmd_vel_pub;
double initial_yaw = 0.0;        // 初始偏航角（弧度）
double accumulated_yaw = 0.0;    // 累计旋转角度（弧度）
double last_yaw = 0.0;           // 上一帧偏航角（用于计算增量）
bool is_spinning = false;        // 是否正在自旋
bool is_first_imu = true;        // 标记是否为第一次IMU数据

// 角度标准化函数：将角度限制在 [-π, π] 范围内
double normalize_angle(double angle) {
    while (angle > M_PI) {
        angle -= 2 * M_PI;
    }
    while (angle < -M_PI) {
        angle += 2 * M_PI;
    }
    return angle;
}

// IMU回调函数：解析姿态并控制自旋（解决角度跳变问题）
void imu_callback(const sensor_msgs::Imu::ConstPtr& imu_msg) {
    // 1. 获取IMU姿态四元数并转换为欧拉角
    geometry_msgs::Quaternion orientation = imu_msg->orientation;
    tf::Quaternion quat;
    tf::quaternionMsgToTF(orientation, quat);
    double roll, pitch, current_yaw;
    tf::Matrix3x3(quat).getRPY(roll, pitch, current_yaw);  // 单位：弧度
    current_yaw = normalize_angle(current_yaw);  // 标准化当前偏航角

    // 2. 初始化：记录初始角度和上一帧角度
    if (is_first_imu) {
        initial_yaw = current_yaw;
        last_yaw = current_yaw;
        is_first_imu = false;
        ROS_WARN("Initial yaw angle recorded: %.2f rad (%.2f°)", 
                 initial_yaw, initial_yaw * 180.0 / M_PI);
        return;  // 第一帧仅初始化，不处理旋转
    }

    // 3. 计算本次帧的角度增量（解决179°→-179°跳变）
    double yaw_delta = normalize_angle(current_yaw - last_yaw);
    accumulated_yaw += yaw_delta;  // 累计旋转角度（核心：用增量累加，避免跳变）
    last_yaw = current_yaw;        // 更新上一帧角度

    // 4. 转换为角度制，便于查看和判断
    double accumulated_yaw_deg = accumulated_yaw * 180.0 / M_PI;
    double current_yaw_deg = current_yaw * 180.0 / M_PI;

    // 5. 打印IMU核心数据（保留你需要的输出）
    ROS_INFO("=== IMU Data ===");
    ROS_INFO("Linear acceleration: x=%.2f, y=%.2f, z=%.2f", 
             imu_msg->linear_acceleration.x, imu_msg->linear_acceleration.y, imu_msg->linear_acceleration.z);
    ROS_INFO("Angular velocity: x=%.2f, y=%.2f, z=%.2f", 
             imu_msg->angular_velocity.x, imu_msg->angular_velocity.y, imu_msg->angular_velocity.z);
    ROS_INFO("Orientation quaternion: x=%.2f, y=%.2f, z=%.2f, w=%.2f", 
             orientation.x, orientation.y, orientation.z, orientation.w);
    ROS_INFO("Current yaw: %.2f° | Accumulated spin angle: %.2f°", 
             current_yaw_deg, accumulated_yaw_deg);

    // 6. 自旋控制逻辑（精准判断180°，不受角度跳变影响）
    geometry_msgs::Twist cmd_vel;
    const double TARGET_ANGLE_DEG = 180.0;  // 目标旋转角度：180°
    const double ANGLE_TOLERANCE = 3.0;     // 角度容差：±1°（避免抖动）

    if (!is_spinning) {
        // 开始自旋
        is_spinning = true;
        ROS_WARN("Start spinning... Target: %.0f°", TARGET_ANGLE_DEG);
    }

    if (fabs(accumulated_yaw_deg) < TARGET_ANGLE_DEG - ANGLE_TOLERANCE) {
        // 未达到目标角度：持续发布旋转速度
        cmd_vel.angular.z = 0.5;  // 正角速度（方向不对可改为-0.5）
        cmd_vel_pub.publish(cmd_vel);
        ROS_INFO("Spinning... Remaining angle: %.2f°", 
                 TARGET_ANGLE_DEG - fabs(accumulated_yaw_deg));
    } else {
        // 达到目标角度：停止运动
        cmd_vel.angular.z = 0.0;
        cmd_vel_pub.publish(cmd_vel);
        ROS_WARN("Reached %.0f°! Total spin angle: %.2f° | Stopping...", 
                 TARGET_ANGLE_DEG, accumulated_yaw_deg);
        ros::shutdown();  // 退出节点
    }
}

int main(int argc, char** argv) {
    // 初始化ROS节点
    ros::init(argc, argv, "imu_spin_node");
    ros::NodeHandle nh;

    // 订阅IMU数据话题
    ros::Subscriber imu_sub = nh.subscribe<sensor_msgs::Imu>("/imu/data", 10, imu_callback);
    
    // 发布速度控制话题（控制底盘旋转）
    cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);

    ROS_INFO("IMU spin node started. Waiting for IMU data...");
    ros::spin();
    return 0;
}
