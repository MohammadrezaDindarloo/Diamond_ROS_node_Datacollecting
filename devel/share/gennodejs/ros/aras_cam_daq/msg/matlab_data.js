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

class matlab_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.encoders = null;
      this.forces = null;
      this.fk = null;
      this.motor_cmd = null;
      this.time_stamps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
      if (initObj.hasOwnProperty('fk')) {
        this.fk = initObj.fk
      }
      else {
        this.fk = [];
      }
      if (initObj.hasOwnProperty('motor_cmd')) {
        this.motor_cmd = initObj.motor_cmd
      }
      else {
        this.motor_cmd = [];
      }
      if (initObj.hasOwnProperty('time_stamps')) {
        this.time_stamps = initObj.time_stamps
      }
      else {
        this.time_stamps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type matlab_data
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [encoders]
    bufferOffset = _arraySerializer.float64(obj.encoders, buffer, bufferOffset, null);
    // Serialize message field [forces]
    bufferOffset = _arraySerializer.float64(obj.forces, buffer, bufferOffset, null);
    // Serialize message field [fk]
    bufferOffset = _arraySerializer.float64(obj.fk, buffer, bufferOffset, null);
    // Serialize message field [motor_cmd]
    bufferOffset = _arraySerializer.float64(obj.motor_cmd, buffer, bufferOffset, null);
    // Serialize message field [time_stamps]
    bufferOffset = _arraySerializer.uint64(obj.time_stamps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type matlab_data
    let len;
    let data = new matlab_data(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [encoders]
    data.encoders = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [forces]
    data.forces = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [fk]
    data.fk = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_cmd]
    data.motor_cmd = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [time_stamps]
    data.time_stamps = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.encoders.length;
    length += 8 * object.forces.length;
    length += 8 * object.fk.length;
    length += 8 * object.motor_cmd.length;
    length += 8 * object.time_stamps.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'aras_cam_daq/matlab_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4d267f9647b57736b8787d57b74de03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[]                  encoders
    float64[]                  forces
    float64[]                  fk
    float64[]                  motor_cmd
    uint64[]		   time_stamps
    
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
    const resolved = new matlab_data(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    if (msg.fk !== undefined) {
      resolved.fk = msg.fk;
    }
    else {
      resolved.fk = []
    }

    if (msg.motor_cmd !== undefined) {
      resolved.motor_cmd = msg.motor_cmd;
    }
    else {
      resolved.motor_cmd = []
    }

    if (msg.time_stamps !== undefined) {
      resolved.time_stamps = msg.time_stamps;
    }
    else {
      resolved.time_stamps = []
    }

    return resolved;
    }
};

module.exports = matlab_data;
