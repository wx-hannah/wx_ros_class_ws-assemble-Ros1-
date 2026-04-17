#!/usr/bin/env python3
from openai import OpenAI
import rospy
from std_msgs.msg import String

api_key = "sk-SUGLiuhypZxvjxCl9guSz3NFd8nBLpS7upLV2OBMJYs4zntf"
base_url = "https://api.moonshot.cn/v1"

class LLM(OpenAI):
    def __init__(self):

        super().__init__(api_key=api_key,
                         base_url=base_url)
        
        self.model = "moonshot-v1-8k"
        self.system_role_content = "你是Kimi,由 Moonshot AI 提供的人工智能助手, \
        我们将会叫你的小名'小月',你不会在回答中提及你的小名,你擅长中文对话."

        rospy.init_node('robot_voice_llm_node', anonymous=True)

        # 发布给语音播报（正确）
        self.pub = rospy.Publisher('/robot_voice/llm/result', String, queue_size=10)
        
        rospy.sleep(0.5)

        # ======================
        # 【最终正确订阅名】
        # ======================
        self.listen_topic = "/robot_voice/speech/result"
        rospy.Subscriber(self.listen_topic, String, self.speech_result_callback)

        # ======================
        # 【打印出来给你看！】
        # ======================
        rospy.loginfo("======================================")
        rospy.loginfo("大模型节点已启动")
        rospy.loginfo("正在监听的话题：%s", self.listen_topic)
        rospy.loginfo("======================================")
        

    def speech_result_callback(self, msg):
        result = msg.data
        rospy.loginfo("✅ 收到语音识别：[%s]", result)
        
        if result:
            try:
                chat_response = self.query(result)
                print(f"🤖 AI回复：{chat_response}")

                # 发给语音播报
                self.pub.publish(String(chat_response))

            except Exception as e:
                print("❌ 错误：", e)
    
    def get_system_role_prompt(self):
        return {"role":"system",  "content": self.system_role_content}

    def user_prompt(self, user_prompt):
        return {"role": "user", "content": user_prompt}

    def query(self, user_prompt):
        user_message = [self.get_system_role_prompt(), self.user_prompt(user_prompt)]
        completion = self.chat.completions.create(
            model=self.model,
            messages=user_message,
            temperature=0.1,
            stream=False
        )
        return completion.choices[0].message.content

if __name__ == "__main__":
    try:
        llm = LLM()
        rospy.spin()
    except KeyboardInterrupt:
        print("\n退出")
