# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "upros_message: 17 messages, 2 services")

set(MSG_I_FLAGS "-Iupros_message:/home/bcsh/wx_ros_class_ws/src/upros_message/msg;-Iupros_message:/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(upros_message_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" ""
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" "upros_message/SingleServo"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" ""
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" "geometry_msgs/PoseStamped:upros_message/CoreMoveGoal:std_msgs/Header:upros_message/CoreMoveFeedback:geometry_msgs/Point:actionlib_msgs/GoalID:upros_message/CoreMoveActionResult:upros_message/CoreMoveActionFeedback:upros_message/CoreMoveResult:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:geometry_msgs/Pose:upros_message/CoreMoveActionGoal"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" "geometry_msgs/PoseStamped:upros_message/CoreMoveGoal:std_msgs/Header:geometry_msgs/Point:actionlib_msgs/GoalID:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:upros_message/CoreMoveResult:std_msgs/Header"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" "geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:actionlib_msgs/GoalID:geometry_msgs/Quaternion:upros_message/CoreMoveFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" "geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" "geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" "upros_message/MyActionFeedback:upros_message/MyActionActionFeedback:std_msgs/Header:actionlib_msgs/GoalID:upros_message/MyActionActionGoal:upros_message/MyActionGoal:upros_message/MyActionResult:upros_message/MyActionActionResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" "upros_message/MyActionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" "actionlib_msgs/GoalStatus:upros_message/MyActionResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" "actionlib_msgs/GoalStatus:upros_message/MyActionFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" ""
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" ""
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" ""
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" ""
)

get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" NAME_WE)
add_custom_target(_upros_message_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upros_message" "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_msg_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)

### Generating Services
_generate_srv_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)
_generate_srv_cpp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
)

### Generating Module File
_generate_module_cpp(upros_message
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(upros_message_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(upros_message_generate_messages upros_message_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_cpp _upros_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upros_message_gencpp)
add_dependencies(upros_message_gencpp upros_message_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upros_message_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_msg_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)

### Generating Services
_generate_srv_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)
_generate_srv_eus(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
)

### Generating Module File
_generate_module_eus(upros_message
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(upros_message_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(upros_message_generate_messages upros_message_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_eus _upros_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upros_message_geneus)
add_dependencies(upros_message_geneus upros_message_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upros_message_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_msg_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)

### Generating Services
_generate_srv_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)
_generate_srv_lisp(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
)

### Generating Module File
_generate_module_lisp(upros_message
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(upros_message_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(upros_message_generate_messages upros_message_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_lisp _upros_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upros_message_genlisp)
add_dependencies(upros_message_genlisp upros_message_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upros_message_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_msg_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)

### Generating Services
_generate_srv_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)
_generate_srv_nodejs(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
)

### Generating Module File
_generate_module_nodejs(upros_message
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(upros_message_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(upros_message_generate_messages upros_message_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_nodejs _upros_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upros_message_gennodejs)
add_dependencies(upros_message_gennodejs upros_message_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upros_message_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_msg_py(upros_message
  "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)

### Generating Services
_generate_srv_py(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)
_generate_srv_py(upros_message
  "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
)

### Generating Module File
_generate_module_py(upros_message
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(upros_message_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(upros_message_generate_messages upros_message_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/SingleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MultipleServo.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/msg/MyMessage.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/CoreMoveFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionAction.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionGoal.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionResult.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/devel/share/upros_message/msg/MyActionFeedback.msg" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/ArmPosition.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bcsh/wx_ros_class_ws/src/upros_message/srv/MyServiceMsg.srv" NAME_WE)
add_dependencies(upros_message_generate_messages_py _upros_message_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upros_message_genpy)
add_dependencies(upros_message_genpy upros_message_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upros_message_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upros_message
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(upros_message_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(upros_message_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(upros_message_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upros_message
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(upros_message_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(upros_message_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(upros_message_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upros_message
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(upros_message_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(upros_message_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(upros_message_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upros_message
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(upros_message_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(upros_message_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(upros_message_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upros_message
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(upros_message_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(upros_message_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(upros_message_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
