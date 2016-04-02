#! /bin/bash

#import the keys
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116


#install ros-indigo-desktop-full and puthon-rosinstall
sudo apt-get update
sudo apt-get install ros-indigo-desktop-full python-rosinstall


#initilize rosdep and update it.
sudo rosdep init
rosdep update

# Add the source folders to .bashrc then run it once for the current session
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

#run rosdep
sudo rm -f /etc/ros/rosdep/sources.list.d/20-default.list
sudo rosdep init
sudo rosdep fix-permissions
sudo rosdep update

#install turtlebot gazebo sim
sudo apt-get install ros-indigo-turtlebot-gazebo
sudo apt-get install ros-indigo-turtlebot-stage
sudo apt-get install ros-indigo-willow-maps
sudo apt-get install ros-indigo-turtlebot-teleop

#install teleop-twist-keyboard
sudo apt-get install ros-indigo-teleop-twist-keyboard

#install NASA/GM R2 sim
sudo apt-get install ros-indigo-ros-control
sudo apt-get install ros-indigo-gazebo-ros-control
sudo apt-get install ros-indigo-joint-state-controller
sudo apt-get install ros-indigo-effort-controllers
sudo apt-get install ros-indigo-joint-trajectory-controller
sudo apt-get install ros-indigo-moveit*
sudo apt-get install ros-indigo-octomap*
sudo apt-get install ros-indigo-object-recognition-*

#install python-pip and pgnparser
sudo apt-get install python-pip
sudo pip install pgnparser

#instal ALVAR, imagemagick, empy
sudo apt-get install ros-indigo-ar-track-alvar*
sudo apt-get install imagemagick
sudo apt-get install python-empy

#install URDF tutorials
sudo apt-get install ros-indigo-urdf-tutorial 
sudo apt-get install liburdfdom-tools 
