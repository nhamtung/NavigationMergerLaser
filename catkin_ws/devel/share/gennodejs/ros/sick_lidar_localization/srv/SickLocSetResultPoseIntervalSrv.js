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

class SickLocSetResultPoseIntervalSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interval = null;
    }
    else {
      if (initObj.hasOwnProperty('interval')) {
        this.interval = initObj.interval
      }
      else {
        this.interval = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocSetResultPoseIntervalSrvRequest
    // Serialize message field [interval]
    bufferOffset = _serializer.int32(obj.interval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultPoseIntervalSrvRequest
    let len;
    let data = new SickLocSetResultPoseIntervalSrvRequest(null);
    // Deserialize message field [interval]
    data.interval = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultPoseIntervalSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bebac32626d427b6cff00707fee72ffb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocSetResultPoseInterval for sick localization.
    #
    # ROS service SickLocSetResultPoseInterval sets the interval of result output telegrams
    # by sending cola command ("sMN LocSetResultPoseInterval <interval>")
    # with parameter
    # <interval>:  0-255, interval in number of scans, 1: result with each processed scan, default: 1
    #
    # See Telegram-Listing-v1.1.0.241R.pdf for further details about 
    # Cola telegrams and this command.
    
    #
    # Request (input)
    #
    
    int32 interval # interval in number of scans, 0-255, 1 (default): result with each processed scan
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocSetResultPoseIntervalSrvRequest(null);
    if (msg.interval !== undefined) {
      resolved.interval = msg.interval;
    }
    else {
      resolved.interval = 0
    }

    return resolved;
    }
};

class SickLocSetResultPoseIntervalSrvResponse {
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
    // Serializes a message object of type SickLocSetResultPoseIntervalSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultPoseIntervalSrvResponse
    let len;
    let data = new SickLocSetResultPoseIntervalSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultPoseIntervalSrvResponse';
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
    const resolved = new SickLocSetResultPoseIntervalSrvResponse(null);
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
  Request: SickLocSetResultPoseIntervalSrvRequest,
  Response: SickLocSetResultPoseIntervalSrvResponse,
  md5sum() { return 'dfed1807f9eafde8783e0a05f0ca7dce'; },
  datatype() { return 'sick_lidar_localization/SickLocSetResultPoseIntervalSrv'; }
};
