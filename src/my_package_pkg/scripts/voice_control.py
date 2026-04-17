#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from tokenizer import Tokenizer
import rospy
from upros_message.msg import TagCommand
from std_msgs.msg import String

class VoiceControlNode:
    def __init__(self):
        rospy.init_node('voice_control')
        self.tokenizer = Tokenizer()
        
        # 发布指令
        self.tag_cmd_pub = rospy.Publisher('/voice_control', TagCommand, queue_size=10)
        
        # ✅ 正确订阅（和你语音识别完全匹配）
        self.talker_sub = rospy.Subscriber('/robot_voice/speech/result', String, self.speech_result_callback)
        
        rospy.loginfo("=" * 50)
        rospy.loginfo("voice_control start OK")
        rospy.loginfo("listen: /robot_voice/speech/result")
        rospy.loginfo("publish: /voice_control")
        rospy.loginfo("=" * 50)

    def speech_result_callback(self, msg):
        rospy.loginfo("I heard: %s", msg.data)
        
        user_input = msg.data
        filtered_input = self.tokenizer.pre_process(user_input)
        intent_string = self.tokenizer.extract_intent(filtered_input)

        if not intent_string:
            rospy.logwarn("no command")
            return

        cmd = TagCommand()
        cmd.intent = intent_string[0]['intent']
        cmd.target = intent_string[0]['target']
        
        self.tag_cmd_pub.publish(cmd)
        rospy.loginfo("publish OK: %s %d", cmd.intent, cmd.target)

if __name__ == "__main__":
    try:
        node = VoiceControlNode()
        rospy.spin()
    except KeyboardInterrupt:
        rospy.loginfo("exit")