#!/usr/bin/env python


## Node used for filtering the data published by the Kinect module.

import argparse
import sys

import struct
import rospy

from BaxterGBI_pbr.msg import *

import tf


from nav_msgs.msg import Odometry

from geometry_msgs.msg import (
    PoseStamped,
    Pose,
    Point,
    Quaternion,
)
from std_msgs.msg import Header


## Callback function associated with the topic used to obtain the Kinect data.
#
# @param data.pose.pose.position: position of the the hand.
# @param data.pose.pose.orientation: orientation of the the hand.
def kinect_data_callback(data):
    
    global rate, pub
    
    msg = mirror_end_effector()
 
    pos = Point()
    pos.x = data.pose.pose.position.x
    pos.y = data.pose.pose.position.y
    pos.z = data.pose.pose.position.z
    
    msg.position = pos
    
    orient = Quaternion()
    orient.x = data.pose.pose.orientation.x
    orient.y = data.pose.pose.orientation.y
    orient.z = data.pose.pose.orientation.z
    orient.w = data.pose.pose.orientation.w
    
    msg.quaternion = orient
    
    pub.publish(msg)


## Node which subscribes to the Kinect's topic (of the hand) and publish on "mirror_end_effector"
def mirror_filter_data():
    
    rospy.loginfo("Initializing node... ")
    rospy.init_node('mirror_filter_data')
    
    
    global pub
    
    pub = rospy.Publisher('mirror_end_effector', mirror_end_effector, queue_size=100)    
    rospy.Subscriber("odometry/baxter/kinect_right_hand", Odometry, kinect_data_callback)
    
    rospy.spin()

if __name__ == "__main__":
    mirror_filter_data()