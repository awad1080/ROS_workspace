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

class NGIMUMagnitudes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mag_gyroscope = null;
      this.mag_accelerometer = null;
      this.mag_magnetometer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mag_gyroscope')) {
        this.mag_gyroscope = initObj.mag_gyroscope
      }
      else {
        this.mag_gyroscope = 0.0;
      }
      if (initObj.hasOwnProperty('mag_accelerometer')) {
        this.mag_accelerometer = initObj.mag_accelerometer
      }
      else {
        this.mag_accelerometer = 0.0;
      }
      if (initObj.hasOwnProperty('mag_magnetometer')) {
        this.mag_magnetometer = initObj.mag_magnetometer
      }
      else {
        this.mag_magnetometer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NGIMUMagnitudes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mag_gyroscope]
    bufferOffset = _serializer.float32(obj.mag_gyroscope, buffer, bufferOffset);
    // Serialize message field [mag_accelerometer]
    bufferOffset = _serializer.float32(obj.mag_accelerometer, buffer, bufferOffset);
    // Serialize message field [mag_magnetometer]
    bufferOffset = _serializer.float32(obj.mag_magnetometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NGIMUMagnitudes
    let len;
    let data = new NGIMUMagnitudes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mag_gyroscope]
    data.mag_gyroscope = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_accelerometer]
    data.mag_accelerometer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_magnetometer]
    data.mag_magnetometer = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ngimu/NGIMUMagnitudes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'afa562698c740c0a2db1c9d9f6327002';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 mag_gyroscope
    float32 mag_accelerometer
    float32 mag_magnetometer
    
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
    const resolved = new NGIMUMagnitudes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mag_gyroscope !== undefined) {
      resolved.mag_gyroscope = msg.mag_gyroscope;
    }
    else {
      resolved.mag_gyroscope = 0.0
    }

    if (msg.mag_accelerometer !== undefined) {
      resolved.mag_accelerometer = msg.mag_accelerometer;
    }
    else {
      resolved.mag_accelerometer = 0.0
    }

    if (msg.mag_magnetometer !== undefined) {
      resolved.mag_magnetometer = msg.mag_magnetometer;
    }
    else {
      resolved.mag_magnetometer = 0.0
    }

    return resolved;
    }
};

module.exports = NGIMUMagnitudes;
