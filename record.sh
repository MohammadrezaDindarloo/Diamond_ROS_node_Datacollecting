#!/bin/bash
export DATASET_PATH='/home/hamedlovesrooholla/dataset_path/'
export TOPICS='/camera/left/image_color/compressed /camera/right/image_color/compressed /camera/left/image_mono/compressed /camera/right/image_mono/compressed /daq /matlab'
export IR_TRACKER_PATH='/home/hamedlovesrooholla/IR_Tracker_WS/RaspiTrack/server_nodes/udp_bridge/standalone'

echo "Recording..."
cd $DATASET_PATH
python3 $IR_TRACKER_PATH/udp_bridge_node.py $IR_TRACKER_PATH/config.yaml &
rosbag record $TOPICS -o $DATASET_PATH

