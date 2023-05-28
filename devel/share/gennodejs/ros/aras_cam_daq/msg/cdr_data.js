// Auto-generated. Do not edit!

// (in-package aras_cam_daq.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class cdr_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.knob = null;
      this.encoders = null;
      this.forces = null;
      this.TS = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('knob')) {
        this.knob = initObj.knob
      }
      else {
        this.knob = 0;
      }
      if (initObj.hasOwnProperty('encoders')) {
        this.encoders = initObj.encoders
      }
      else {
        this.encoders = [];
      }
      if (initObj.hasOwnProperty('forces')) {
        this.forces = initObj.forces
      }
      else {
        this.forces = [];
      }
      if (initObj.hasOwnProperty('TS')) {
        this.TS = initObj.TS
      }
      else {
        this.TS = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type cdr_data
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [knob]
    bufferOffset = _serializer.int32(obj.knob, buffer, bufferOffset);
    // Serialize message field [encoders]
    bufferOffset = _arraySerializer.int32(obj.encoders, buffer, bufferOffset, null);
    // Serialize message field [forces]
    bufferOffset = _arraySerializer.int32(obj.forces, buffer, bufferOffset, null);
    // Serialize message field [TS]
    bufferOffset = _arraySerializer.uint64(obj.TS, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type cdr_data
    let len;
    let data = new cdr_data(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [knob]
    data.knob = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [encoders]
    data.encoders = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [forces]
    data.forces = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [TS]
    data.TS = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.encoders.length;
    length += 4 * object.forces.length;
    length += 8 * object.TS.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aras_cam_daq/cdr_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a6aeaab60b5a774977b1106284e3002';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32                    knob
    int32[]                  encoders
    int32[]                  forces
    uint64[]                 TS
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new cdr_data(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.knob !== undefined) {
      resolved.knob = msg.knob;
    }
    else {
      resolved.knob = 0
    }

    if (msg.encoders !== undefined) {
      resolved.encoders = msg.encoders;
    }
    else {
      resolved.encoders = []
    }

    if (msg.forces !== undefined) {
      resolved.forces = msg.forces;
    }
    else {
      resolved.forces = []
    }

    if (msg.TS !== undefined) {
      resolved.TS = msg.TS;
    }
    else {
      resolved.TS = []
    }

    return resolved;
    }
};

module.exports = cdr_data;
