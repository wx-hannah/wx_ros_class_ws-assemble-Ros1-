#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
int main(int argc, char **argv)
{
    ros::init(argc, argv, "move_forward_node");
    ros::NodeHandle nh;
    // 发布/cmd_vel话题，控制机器人速度
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    ros::Rate loop_rate(10); // 10Hz，每100毫秒发一次指令
    geometry_msgs::Twist vel_msg;
    // 设置前进速度：x方向0.2m/s，其他方向0
    vel_msg.linear.x = 0.2;
    vel_msg.linear.y = 0;
    vel_msg.linear.z = 0;
    // 角速度全0，不旋转
    vel_msg.angular.x = 0;
    vel_msg.angular.y = 0;
    vel_msg.angular.z = 0;

    int count = 0;
    // 循环100次，每次0.1秒，共10秒，0.2*10=2米
    while (ros::ok() && count < 100) {
        pub.publish(vel_msg);
        ros::spinOnce();
        loop_rate.sleep();
        count++;
    }
    // 10秒后，速度置0，机器人停止
    vel_msg.linear.x = 0.0;
    pub.publish(vel_msg);
    return 0;
}
