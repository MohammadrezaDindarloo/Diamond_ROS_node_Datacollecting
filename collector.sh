#!/bin/bash
export DATASET_PATH='/home/hamedlovesrooholla/dataset_path/'
export TOPICS='/camera/left/image_color/compressed /camera/right/image_color/compressed /camera/left/image_mono/compressed /camera/right/image_mono/compressed /daq /matlab'
export IR_TRACKER_PATH='/home/hamedlovesrooholla/IR_Tracker_WS/RaspiTrack/server_nodes/udp_bridge/standalone'
echo "Starting ..., But really Why?? In the End, It doesn't even/really matter"

cd ~/ROS/Dataset_Collector/collector_ws
source devel/setup.bash
wait

echo "Launching DAQ Backend ..."
pwd
roslaunch daq_backend.launch 
sleep 3
