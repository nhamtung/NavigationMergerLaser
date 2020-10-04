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

class SickLocSetResultPoseEnabledSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enabled = null;
    }
    else {
      if (initObj.hasOwnProperty('enabled')) {
        this.enabled = initObj.enabled
      }
      else {
        this.enabled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocSetResultPoseEnabledSrvRequest
    // Serialize message field [enabled]
    bufferOffset = _serializer.int32(obj.enabled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultPoseEnabledSrvRequest
    let len;
    let data = new SickLocSetResultPoseEnabledSrvRequest(null);
    // Deserialize message field [enabled]
    data.enabled = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultPoseEnabledSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e0ec6411cf041bfb5f539456c58a321';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocSetResultPoseEnabled for sick localization.
    #
    # ROS service SickLocSetResultPoseEnabled enables or disables result output telegrams
    # by sending cola command ("sMN LocSetResultPoseEnabled <enabled>")
    # with parameter
    # <enabled>: 0: disabled, 1: enabled, default: enabled
    #
    # See Telegram-Listing-v1.1.0.241R.pdf for further details about 
    # Cola telegrams and this command.
    
    #
    # Request (input)
    #
    
    int32 enabled # 0: result output disabled, result output 1: enabled, default: enabled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocSetResultPoseEnabledSrvRequest(null);
    if (msg.enabled !== undefined) {
      resolved.enabled = msg.enabled;
    }
    else {
      resolved.enabled = 0
    }

    return resolved;
    }
};

class SickLocSetResultPoseEnabledSrvResponse {
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
    // Serializes a message object of type SickLocSetResultPoseEnabledSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultPoseEnabledSrvResponse
    let len;
    let data = new SickLocSetResultPoseEnabledSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultPoseEnabledSrvResponse';
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
    const resolved = new SickLocSetResultPoseEnabledSrvResponse(null);
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
  Request: SickLocSetResultPoseEnabledSrvRequest,
  Response: SickLocSetResultPoseEnabledSrvResponse,
  md5sum() { return '1f66c3fbfa9f51fd9331860303d68bcc'; },
  datatype() { return 'sick_lidar_localization/SickLocSetResultPoseEnabledSrv'; }
};
