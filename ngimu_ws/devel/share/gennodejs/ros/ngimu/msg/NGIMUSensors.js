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

class NGIMUSensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gyroscopeX = null;
      this.gyroscopeY = null;
      this.gyroscopeZ = null;
      this.accelerometerX = null;
      this.accelerometerY = null;
      this.accelerometerZ = null;
      this.magnetometerX = null;
      this.magnetometerY = null;
      this.magnetometerZ = null;
      this.barometer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gyroscopeX')) {
        this.gyroscopeX = initObj.gyroscopeX
      }
      else {
        this.gyroscopeX = 0.0;
      }
      if (initObj.hasOwnProperty('gyroscopeY')) {
        this.gyroscopeY = initObj.gyroscopeY
      }
      else {
        this.gyroscopeY = 0.0;
      }
      if (initObj.hasOwnProperty('gyroscopeZ')) {
        this.gyroscopeZ = initObj.gyroscopeZ
      }
      else {
        this.gyroscopeZ = 0.0;
      }
      if (initObj.hasOwnProperty('accelerometerX')) {
        this.accelerometerX = initObj.accelerometerX
      }
      else {
        this.accelerometerX = 0.0;
      }
      if (initObj.hasOwnProperty('accelerometerY')) {
        this.accelerometerY = initObj.accelerometerY
      }
      else {
        this.accelerometerY = 0.0;
      }
      if (initObj.hasOwnProperty('accelerometerZ')) {
        this.accelerometerZ = initObj.accelerometerZ
      }
      else {
        this.accelerometerZ = 0.0;
      }
      if (initObj.hasOwnProperty('magnetometerX')) {
        this.magnetometerX = initObj.magnetometerX
      }
      else {
        this.magnetometerX = 0.0;
      }
      if (initObj.hasOwnProperty('magnetometerY')) {
        this.magnetometerY = initObj.magnetometerY
      }
      else {
        this.magnetometerY = 0.0;
      }
      if (initObj.hasOwnProperty('magnetometerZ')) {
        this.magnetometerZ = initObj.magnetometerZ
      }
      else {
        this.magnetometerZ = 0.0;
      }
      if (initObj.hasOwnProperty('barometer')) {
        this.barometer = initObj.barometer
      }
      else {
        this.barometer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NGIMUSensors
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gyroscopeX]
    bufferOffset = _serializer.float32(obj.gyroscopeX, buffer, bufferOffset);
    // Serialize message field [gyroscopeY]
    bufferOffset = _serializer.float32(obj.gyroscopeY, buffer, bufferOffset);
    // Serialize message field [gyroscopeZ]
    bufferOffset = _serializer.float32(obj.gyroscopeZ, buffer, bufferOffset);
    // Serialize message field [accelerometerX]
    bufferOffset = _serializer.float32(obj.accelerometerX, buffer, bufferOffset);
    // Serialize message field [accelerometerY]
    bufferOffset = _serializer.float32(obj.accelerometerY, buffer, bufferOffset);
    // Serialize message field [accelerometerZ]
    bufferOffset = _serializer.float32(obj.accelerometerZ, buffer, bufferOffset);
    // Serialize message field [magnetometerX]
    bufferOffset = _serializer.float32(obj.magnetometerX, buffer, bufferOffset);
    // Serialize message field [magnetometerY]
    bufferOffset = _serializer.float32(obj.magnetometerY, buffer, bufferOffset);
    // Serialize message field [magnetometerZ]
    bufferOffset = _serializer.float32(obj.magnetometerZ, buffer, bufferOffset);
    // Serialize message field [barometer]
    bufferOffset = _serializer.float32(obj.barometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NGIMUSensors
    let len;
    let data = new NGIMUSensors(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroscopeX]
    data.gyroscopeX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroscopeY]
    data.gyroscopeY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroscopeZ]
    data.gyroscopeZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerometerX]
    data.accelerometerX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerometerY]
    data.accelerometerY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelerometerZ]
    data.accelerometerZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magnetometerX]
    data.magnetometerX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magnetometerY]
    data.magnetometerY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magnetometerZ]
    data.magnetometerZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [barometer]
    data.barometer = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ngimu/NGIMUSensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45f09260ad0d83cd715dfa3ebd097b05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 gyroscopeX
    float32 gyroscopeY
    float32 gyroscopeZ
    float32 accelerometerX
    float32 accelerometerY
    float32 accelerometerZ
    float32 magnetometerX
    float32 magnetometerY
    float32 magnetometerZ
    float32 barometer
    
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
    const resolved = new NGIMUSensors(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gyroscopeX !== undefined) {
      resolved.gyroscopeX = msg.gyroscopeX;
    }
    else {
      resolved.gyroscopeX = 0.0
    }

    if (msg.gyroscopeY !== undefined) {
      resolved.gyroscopeY = msg.gyroscopeY;
    }
    else {
      resolved.gyroscopeY = 0.0
    }

    if (msg.gyroscopeZ !== undefined) {
      resolved.gyroscopeZ = msg.gyroscopeZ;
    }
    else {
      resolved.gyroscopeZ = 0.0
    }

    if (msg.accelerometerX !== undefined) {
      resolved.accelerometerX = msg.accelerometerX;
    }
    else {
      resolved.accelerometerX = 0.0
    }

    if (msg.accelerometerY !== undefined) {
      resolved.accelerometerY = msg.accelerometerY;
    }
    else {
      resolved.accelerometerY = 0.0
    }

    if (msg.accelerometerZ !== undefined) {
      resolved.accelerometerZ = msg.accelerometerZ;
    }
    else {
      resolved.accelerometerZ = 0.0
    }

    if (msg.magnetometerX !== undefined) {
      resolved.magnetometerX = msg.magnetometerX;
    }
    else {
      resolved.magnetometerX = 0.0
    }

    if (msg.magnetometerY !== undefined) {
      resolved.magnetometerY = msg.magnetometerY;
    }
    else {
      resolved.magnetometerY = 0.0
    }

    if (msg.magnetometerZ !== undefined) {
      resolved.magnetometerZ = msg.magnetometerZ;
    }
    else {
      resolved.magnetometerZ = 0.0
    }

    if (msg.barometer !== undefined) {
      resolved.barometer = msg.barometer;
    }
    else {
      resolved.barometer = 0.0
    }

    return resolved;
    }
};

module.exports = NGIMUSensors;
