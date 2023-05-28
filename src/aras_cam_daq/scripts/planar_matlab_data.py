#!/usr/bin/env python
import rospy
import socket
import struct
from std_msgs.msg import Int32
from random import randint
from aras_cam_daq.msg import matlab_data
UDP_IP = ""
UDP_PORT = 5700
sock = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))
msg = matlab_data()
def aras_daq_system():
    rospy.init_node('MATLAB_STUFF')
    pub = rospy.Publisher('matlab', matlab_data,queue_size=1)
    while not rospy.is_shutdown():
        data, addr = sock.recvfrom(40)
        len1, len2, x, y, z =\
                    struct.unpack('5d', data)

        msg.header.stamp = rospy.Time.now()
        msg.encoders = [len1, len2]
        msg.forces = [x, y, z]
        msg.fk = [0]
        msg.motor_cmd =[0]
        msg.time_stamps = [0]
        pub.publish(msg)
        #print(trigger_time)
if __name__=='__main__':
    try:
        aras_daq_system()
    except rospy.ROSInterruptException:
        pass
