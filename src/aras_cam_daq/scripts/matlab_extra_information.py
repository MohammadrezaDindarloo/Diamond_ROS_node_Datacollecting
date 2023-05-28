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
        data, addr = sock.recvfrom(152)
        enc1, enc2, enc3, enc4, f1, f2, f3, f4, x, y, z, cmd1, cmd2, cmd3, cmd4, rpu_stamp, udp_stamp, ir_tracker_stamp, matlab_time =\
                                                                                            struct.unpack('15d3Qd', data)

        msg.header.stamp = rospy.Time.now()
        msg.encoders = [enc1, enc2, enc3, enc4]
        msg.forces = [f1, f2, f3, f4]
        msg.fk = [x, y, z]
        msg.motor_cmd =[cmd1, cmd2, cmd3, cmd4]
        msg.time_stamps = [rpu_stamp, udp_stamp, ir_tracker_stamp, matlab_time*1000000]
        pub.publish(msg)
        #print(trigger_time)
if __name__=='__main__':
    try:
        aras_daq_system()
    except rospy.ROSInterruptException:
        pass
