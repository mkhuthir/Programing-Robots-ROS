cmake_minimum_required(VERSION 2.8.3)
project(basics)


find_package(catkin REQUIRED COMPONENTS
 rospy
 std_msgs
 message_generation
 actionlib_msgs
)

## Generate messages in the 'msg' folder
 add_message_files(
    FILES
     Complex.msg
 )

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   WordCount.srv
 )

## Generate actions in the 'action' folder
 add_action_files(
    DIRECTORY 
     action
    FILES 
     Timer.action
     Talk.action
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   actionlib_msgs
   std_msgs
 )

catkin_package(
   CATKIN_DEPENDS message_runtime
   actionlib_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)


