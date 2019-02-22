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

class NGIMURotationMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.xx = null;
      this.xy = null;
      this.xz = null;
      this.yx = null;
      this.yy = null;
      this.yz = null;
      this.zx = null;
      this.zy = null;
      this.zz = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('xx')) {
        this.xx = initObj.xx
      }
      else {
        this.xx = 0.0;
      }
      if (initObj.hasOwnProperty('xy')) {
        this.xy = initObj.xy
      }
      else {
        this.xy = 0.0;
      }
      if (initObj.hasOwnProperty('xz')) {
        this.xz = initObj.xz
      }
      else {
        this.xz = 0.0;
      }
      if (initObj.hasOwnProperty('yx')) {
        this.yx = initObj.yx
      }
      else {
        this.yx = 0.0;
      }
      if (initObj.hasOwnProperty('yy')) {
        this.yy = initObj.yy
      }
      else {
        this.yy = 0.0;
      }
      if (initObj.hasOwnProperty('yz')) {
        this.yz = initObj.yz
      }
      else {
        this.yz = 0.0;
      }
      if (initObj.hasOwnProperty('zx')) {
        this.zx = initObj.zx
      }
      else {
        this.zx = 0.0;
      }
      if (initObj.hasOwnProperty('zy')) {
        this.zy = initObj.zy
      }
      else {
        this.zy = 0.0;
      }
      if (initObj.hasOwnProperty('zz')) {
        this.zz = initObj.zz
      }
      else {
        this.zz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NGIMURotationMatrix
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [xx]
    bufferOffset = _serializer.float32(obj.xx, buffer, bufferOffset);
    // Serialize message field [xy]
    bufferOffset = _serializer.float32(obj.xy, buffer, bufferOffset);
    // Serialize message field [xz]
    bufferOffset = _serializer.float32(obj.xz, buffer, bufferOffset);
    // Serialize message field [yx]
    bufferOffset = _serializer.float32(obj.yx, buffer, bufferOffset);
    // Serialize message field [yy]
    bufferOffset = _serializer.float32(obj.yy, buffer, bufferOffset);
    // Serialize message field [yz]
    bufferOffset = _serializer.float32(obj.yz, buffer, bufferOffset);
    // Serialize message field [zx]
    bufferOffset = _serializer.float32(obj.zx, buffer, bufferOffset);
    // Serialize message field [zy]
    bufferOffset = _serializer.float32(obj.zy, buffer, bufferOffset);
    // Serialize message field [zz]
    bufferOffset = _serializer.float32(obj.zz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NGIMURotationMatrix
    let len;
    let data = new NGIMURotationMatrix(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [xx]
    data.xx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xy]
    data.xy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xz]
    data.xz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yx]
    data.yx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yy]
    data.yy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yz]
    data.yz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zx]
    data.zx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zy]
    data.zy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zz]
    data.zz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ngimu/NGIMURotationMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b3a9a788418885a37b0855fd9c38d8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 xx
    float32 xy
    float32 xz
    float32 yx
    float32 yy
    float32 yz
    float32 zx
    float32 zy
    float32 zz
    
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
    const resolved = new NGIMURotationMatrix(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.xx !== undefined) {
      resolved.xx = msg.xx;
    }
    else {
      resolved.xx = 0.0
    }

    if (msg.xy !== undefined) {
      resolved.xy = msg.xy;
    }
    else {
      resolved.xy = 0.0
    }

    if (msg.xz !== undefined) {
      resolved.xz = msg.xz;
    }
    else {
      resolved.xz = 0.0
    }

    if (msg.yx !== undefined) {
      resolved.yx = msg.yx;
    }
    else {
      resolved.yx = 0.0
    }

    if (msg.yy !== undefined) {
      resolved.yy = msg.yy;
    }
    else {
      resolved.yy = 0.0
    }

    if (msg.yz !== undefined) {
      resolved.yz = msg.yz;
    }
    else {
      resolved.yz = 0.0
    }

    if (msg.zx !== undefined) {
      resolved.zx = msg.zx;
    }
    else {
      resolved.zx = 0.0
    }

    if (msg.zy !== undefined) {
      resolved.zy = msg.zy;
    }
    else {
      resolved.zy = 0.0
    }

    if (msg.zz !== undefined) {
      resolved.zz = msg.zz;
    }
    else {
      resolved.zz = 0.0
    }

    return resolved;
    }
};

module.exports = NGIMURotationMatrix;
