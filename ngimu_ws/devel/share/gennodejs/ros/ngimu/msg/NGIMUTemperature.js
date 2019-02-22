// Auto-generated. Do not edit!

// (in-package ngimu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NGIMUTemperature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.temp_processor = null;
      this.temp_gyro_accel = null;
      this.temp_barometer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('temp_processor')) {
        this.temp_processor = initObj.temp_processor
      }
      else {
        this.temp_processor = 0.0;
      }
      if (initObj.hasOwnProperty('temp_gyro_accel')) {
        this.temp_gyro_accel = initObj.temp_gyro_accel
      }
      else {
        this.temp_gyro_accel = 0.0;
      }
      if (initObj.hasOwnProperty('temp_barometer')) {
        this.temp_barometer = initObj.temp_barometer
      }
      else {
        this.temp_barometer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NGIMUTemperature
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [temp_processor]
    bufferOffset = _serializer.float32(obj.temp_processor, buffer, bufferOffset);
    // Serialize message field [temp_gyro_accel]
    bufferOffset = _serializer.float32(obj.temp_gyro_accel, buffer, bufferOffset);
    // Serialize message field [temp_barometer]
    bufferOffset = _serializer.float32(obj.temp_barometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NGIMUTemperature
    let len;
    let data = new NGIMUTemperature(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [temp_processor]
    data.temp_processor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temp_gyro_accel]
    data.temp_gyro_accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temp_barometer]
    data.temp_barometer = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ngimu/NGIMUTemperature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd24d79a8d8f66d391e56b823cfb9b329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 temp_processor
    float32 temp_gyro_accel
    float32 temp_barometer
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NGIMUTemperature(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.temp_processor !== undefined) {
      resolved.temp_processor = msg.temp_processor;
    }
    else {
      resolved.temp_processor = 0.0
    }

    if (msg.temp_gyro_accel !== undefined) {
      resolved.temp_gyro_accel = msg.temp_gyro_accel;
    }
    else {
      resolved.temp_gyro_accel = 0.0
    }

    if (msg.temp_barometer !== undefined) {
      resolved.temp_barometer = msg.temp_barometer;
    }
    else {
      resolved.temp_barometer = 0.0
    }

    return resolved;
    }
};

module.exports = NGIMUTemperature;
