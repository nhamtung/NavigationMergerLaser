// Auto-generated. Do not edit!

// (in-package driver_blvd_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class speed_wheel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_letf = null;
      this.wheel_right = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_letf')) {
        this.wheel_letf = initObj.wheel_letf
      }
      else {
        this.wheel_letf = 0;
      }
      if (initObj.hasOwnProperty('wheel_right')) {
        this.wheel_right = initObj.wheel_right
      }
      else {
        this.wheel_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type speed_wheel
    // Serialize message field [wheel_letf]
    bufferOffset = _serializer.int16(obj.wheel_letf, buffer, bufferOffset);
    // Serialize message field [wheel_right]
    bufferOffset = _serializer.int16(obj.wheel_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type speed_wheel
    let len;
    let data = new speed_wheel(null);
    // Deserialize message field [wheel_letf]
    data.wheel_letf = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [wheel_right]
    data.wheel_right = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'driver_blvd_controller/speed_wheel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa530f9e80374edbcefccea8ede27bff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 wheel_letf
    int16 wheel_right 
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new speed_wheel(null);
    if (msg.wheel_letf !== undefined) {
      resolved.wheel_letf = msg.wheel_letf;
    }
    else {
      resolved.wheel_letf = 0
    }

    if (msg.wheel_right !== undefined) {
      resolved.wheel_right = msg.wheel_right;
    }
    else {
      resolved.wheel_right = 0
    }

    return resolved;
    }
};

module.exports = speed_wheel;
