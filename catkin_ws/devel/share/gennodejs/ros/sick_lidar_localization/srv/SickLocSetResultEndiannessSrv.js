// Auto-generated. Do not edit!

// (in-package sick_lidar_localization.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SickLocSetResultEndiannessSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endianness = null;
    }
    else {
      if (initObj.hasOwnProperty('endianness')) {
        this.endianness = initObj.endianness
      }
      else {
        this.endianness = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocSetResultEndiannessSrvRequest
    // Serialize message field [endianness]
    bufferOffset = _serializer.int32(obj.endianness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultEndiannessSrvRequest
    let len;
    let data = new SickLocSetResultEndiannessSrvRequest(null);
    // Deserialize message field [endianness]
    data.endianness = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultEndiannessSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbfcd5480d5ddb32a624017eae94b7b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocSetResultEndianness for sick localization.
    #
    # ROS service SickLocSetResultEndianness sets the endianness of the result output
    # by sending cola command ("sMN LocSetResultEndianness <endianness>")
    # with parameter
    # <endianness>:  0: big endian, 1: little endian, default: big endian
    #
    # See Telegram-Listing-v1.1.0.241R.pdf for further details about 
    # Cola telegrams and this command.
    
    #
    # Request (input)
    #
    
    int32 endianness # 0: big endian, 1: little endian, default: big endian
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocSetResultEndiannessSrvRequest(null);
    if (msg.endianness !== undefined) {
      resolved.endianness = msg.endianness;
    }
    else {
      resolved.endianness = 0
    }

    return resolved;
    }
};

class SickLocSetResultEndiannessSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocSetResultEndiannessSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultEndiannessSrvResponse
    let len;
    let data = new SickLocSetResultEndiannessSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultEndiannessSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #
    # Response (output)
    #
    
    bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocSetResultEndiannessSrvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SickLocSetResultEndiannessSrvRequest,
  Response: SickLocSetResultEndiannessSrvResponse,
  md5sum() { return 'ad546145ccc5332dee356f4fbbf0ae49'; },
  datatype() { return 'sick_lidar_localization/SickLocSetResultEndiannessSrv'; }
};
