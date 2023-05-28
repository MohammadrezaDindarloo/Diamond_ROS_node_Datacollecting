#!/usr/bin/env python
import rospy
import socket
import struct
from std_msgs.msg import Int32
from random import randint
from aras_cam_daq.msg import diamond
UDP_IP = ""
UDP_PORT = 4000
sock = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))
msg = diamond()
def aras_daq_system():
    rospy.init_node('ARAS_DAQ')
    pub = rospy.Publisher('daq', diamond,queue_size=1)
    CAM_TimeStamp_Old=0
    trigger_time=0
    trigger_time_old=0
    while not rospy.is_shutdown():
        data, addr = sock.recvfrom(72)

        enc1, enc2, ax, ay, az, gx, gy,\
        gz, wx, wy, wz, tmp1, tmp2, trq1, trq2, tmp3, ENC_time, IMU_time, CAM_time, MOTOR_time =\
        struct.unpack('2i9h2c2ii4Q', data)

        msg.header.stamp = rospy.Time.now()
        msg.Turq = [trq1, trq2]
        msg.Encoders = [enc1, enc2]
        msg.IMU = [ax, ay, az, gx, gy, gz, wx, wy, wz]
        msg.TS = [ENC_time, IMU_time, CAM_time, MOTOR_time]
        pub.publish(msg)
        #print(trigger_time)
if __name__=='__main__':
    try:
        aras_daq_system()
    except rospy.ROSInterruptException:
        pass
