#include "tf2_ros/transform_listener.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include "geometry_msgs/TransformStamped.h"
#include "geometry_msgs/PointStamped.h"

#include "upros_message/ArmPosition.h"
#include "std_srvs/Empty.h"
#include <ros/ros.h>

// 坐标安全限制
int limit(int val, int min, int max) {
    if (val < min) return min;
    if (val > max) return max;
    return val;
}

void sleep(double second)
{
    ros::Duration(second).sleep();
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "mgrab_test");
    ros::AsyncSpinner spinner(1);
    spinner.start();
    ros::NodeHandle nh;

    // 1. 先定义服务客户端
    ros::ServiceClient arm_move_open_client = nh.serviceClient<upros_message::ArmPosition>("/upros_arm_control/arm_pos_service_open");
    ros::ServiceClient arm_zero_client = nh.serviceClient<std_srvs::Empty>("/upros_arm_control/zero_service");
    ros::ServiceClient arm_grab_client = nh.serviceClient<std_srvs::Empty>("/upros_arm_control/grab_service");
    ros::ServiceClient arm_release_client = nh.serviceClient<std_srvs::Empty>("/upros_arm_control/release_service");

    // 2. 等待服务启动（现在不会报错了）
    ROS_INFO("Waiting for arm services...");
    arm_move_open_client.waitForExistence();
    arm_release_client.waitForExistence();
    arm_grab_client.waitForExistence();
    arm_zero_client.waitForExistence();
    ROS_INFO("All services connected!");



    ROS_INFO("GO HOME FIRST! NO MOVE!");
    std_srvs::Empty empty_srv;
    arm_zero_client.call(empty_srv);
    sleep(3.0);
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    ROS_INFO("tf coordinate transforming....");

    // 获取tag到机械臂基坐标的坐标变换
    geometry_msgs::TransformStamped tfs_1 = buffer.lookupTransform("arm_base_link", "tag_1", ros::Time(0), ros::Duration(100));

    // 4. 坐标计算
    int x = -int(tfs_1.transform.translation.y * 1000);//y  direction
    int y = int(tfs_1.transform.translation.x * 1000) ;
    int z = int(tfs_1.transform.translation.z * 1000 + 40);

    // 5. 安全限制（防止超范围）
    x = limit(x, -120, 120);
    y = limit(y, 30, 180);
    z = limit(z, 50, 220);

    ROS_INFO("Target POS: X=%d Y=%d Z=%d", x, y, z);


    // 6. 移动指令
    upros_message::ArmPosition move_srv;
    move_srv.request.x = x;
    move_srv.request.y = y;
    move_srv.request.z = z;

    // ================== 抓取流程 ==================
    // 打开夹爪
    arm_release_client.call(empty_srv);
    sleep(2.0);

    // 移动到目标
    arm_move_open_client.call(move_srv);
    sleep(5.0);
    ROS_INFO("STOP MOVE!!!!!!!!!!!!!!!!!!!!!!!");

    // 抓取
    arm_grab_client.call(empty_srv);
    sleep(2.0);

    // 回零
    arm_zero_client.call(empty_srv);
    sleep(5.0);
    // ==============================================

    ROS_INFO("Grab Done!");
    ros::shutdown();
    return 0;
}
