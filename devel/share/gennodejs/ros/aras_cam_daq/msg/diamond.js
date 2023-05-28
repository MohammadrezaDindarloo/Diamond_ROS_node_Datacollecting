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

class diamond {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Turq = null;
      this.Encoders = null;
      this.IMU = null;
      this.TS = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Turq')) {
        this.Turq = initObj.Turq
      }
      else {
        this.Turq = [];
      }
      if (initObj.hasOwnProperty('Encoders')) {
        this.Encoders = initObj.Encoders
      }
      else {
        this.Encoders = [];
      }
      if (initObj.hasOwnProperty('IMU')) {
        this.IMU = initObj.IMU
      }
      else {
        this.IMU = [];
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
    // Serializes a message object of type diamond
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Turq]
    bufferOffset = _arraySerializer.int32(obj.Turq, buffer, bufferOffset, null);
    // Serialize message field [Encoders]
    bufferOffset = _arraySerializer.int32(obj.Encoders, buffer, bufferOffset, null);
    // Serialize message field [IMU]
    bufferOffset = _arraySerializer.int16(obj.IMU, buffer, bufferOffset, null);
    // Serialize message field [TS]
    bufferOffset = _arraySerializer.uint64(obj.TS, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type diamond
    let len;
    let data = new diamond(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Turq]
    data.Turq = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Encoders]
    data.Encoders = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [IMU]
    data.IMU = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [TS]
    data.TS = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.Turq.length;
    length += 4 * object.Encoders.length;
    length += 2 * object.IMU.length;
    length += 8 * object.TS.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aras_cam_daq/diamond';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08a19a8bb047aab7f948074955b487b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32[]                  Turq
    int32[]                  Encoders
    int16[]                  IMU
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
    const resolved = new diamond(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Turq !== undefined) {
      resolved.Turq = msg.Turq;
    }
    else {
      resolved.Turq = []
    }

    if (msg.Encoders !== undefined) {
      resolved.Encoders = msg.Encoders;
    }
    else {
      resolved.Encoders = []
    }

    if (msg.IMU !== undefined) {
      resolved.IMU = msg.IMU;
    }
    else {
      resolved.IMU = []
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

module.exports = diamond;
