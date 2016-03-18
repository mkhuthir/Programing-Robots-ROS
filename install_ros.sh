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

