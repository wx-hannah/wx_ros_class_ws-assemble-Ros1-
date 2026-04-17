#!/usr/bin/env python3
import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from upros_message.msg import TagCommand

class VoiceNavNode:
    def __init__(self):
        rospy.init_node('voice_nav_node')
        self.cmd_sub = rospy.Subscriber('/voice_control', TagCommand, self.cmd_callback)
        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        self.client.wait_for_server()

        # ------------ 关键：只打印英文，彻底消灭乱码 ------------
        rospy.loginfo("NAV NODE STARTED OK")

    def cmd_callback(self, msg):
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()

        # 只响应 go_to 指令
        if msg.intent != "go_to":
            return

        if msg.target == 1:
            goal.target_pose.pose.position.x = 1.90
            goal.target_pose.pose.position.y = -1.79
            goal.target_pose.pose.orientation.w = 1.0

        elif msg.target == 2:
            goal.target_pose.pose.position.x = 1.90
            goal.target_pose.pose.position.y = -2.99
            goal.target_pose.pose.orientation.z = -1.0
            goal.target_pose.pose.orientation.w = 0.0

        else:
            goal.target_pose.pose.position.x = 0.0
            goal.target_pose.pose.position.y = 0.0
            goal.target_pose.pose.orientation.w = 1.0

        self.client.send_goal(goal)
        self.client.wait_for_result()

if __name__ == '__main__':
    try:
        node = VoiceNavNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass