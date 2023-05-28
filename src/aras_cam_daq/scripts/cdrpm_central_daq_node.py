#!/usr/bin/env python
import rospy
import socket
import struct
from std_msgs.msg import Int32
from random import randint
from aras_cam_daq.msg import cdr_data
UDP_IP = ""
UDP_PORT = 5600
sock = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))
msg = cdr_data()
def aras_daq_system():
    rospy.init_node('ARAS_DAQ')
    pub = rospy.Publisher('daq', cdr_data,queue_size=1)
    CAM_TimeStamp_Old=0
    trigger_time=0
    trigger_time_old=0
    while not rospy.is_shutdown():
        data, addr = sock.recvfrom(64)
        aux, encn, enc1, enc2, enc3,\
        enc4,  f1, f2, f3, f4, IMU_TimeStamp, RPU_TimeStamp, CAM_TimeStamp =\
        struct.unpack('10i3Q', data)
        if CAM_TimeStamp_Old==0 and CAM_TimeStamp==1:
            trigger_time=rospy.Time.now().to_sec()
	    #print(1/(trigger_time-trigger_time_old)) #Print the trigger frequency
	    trigger_time_old=trigger_time

	CAM_TimeStamp_Old=CAM_TimeStamp
	msg.header.stamp = rospy.Time.now()
        msg.knob = encn
        msg.encoders = [enc1, enc2, enc3, enc4]
        msg.forces = [f1, f2, f3, f4]
        msg.TS = [IMU_TimeStamp, RPU_TimeStamp, CAM_TimeStamp]
        pub.publish(msg)
        #print(trigger_time)
if __name__=='__main__':
    try:
        aras_daq_system()
    except rospy.ROSInterruptException:
        pass
