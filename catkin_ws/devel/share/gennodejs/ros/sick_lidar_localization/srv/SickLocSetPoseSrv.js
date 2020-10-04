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

class SickLocSetPoseSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posex = null;
      this.posey = null;
      this.yaw = null;
      this.uncertainty = null;
    }
    else {
      if (initObj.hasOwnProperty('posex')) {
        this.posex = initObj.posex
      }
      else {
        this.posex = 0;
      }
      if (initObj.hasOwnProperty('posey')) {
        this.posey = initObj.posey
      }
      else {
        this.posey = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0;
      }
      if (initObj.hasOwnProperty('uncertainty')) {
        this.uncertainty = initObj.uncertainty
      }
      else {
        this.uncertainty = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocSetPoseSrvRequest
    // Serialize message field [posex]
    bufferOffset = _serializer.int32(obj.posex, buffer, bufferOffset);
    // Serialize message field [posey]
    bufferOffset = _serializer.int32(obj.posey, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.int32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [uncertainty]
    bufferOffset = _serializer.int32(obj.uncertainty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetPoseSrvRequest
    let len;
    let data = new SickLocSetPoseSrvRequest(null);
    // Deserialize message field [posex]
    data.posex = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [posey]
    data.posey = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [uncertainty]
    data.uncertainty = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetPoseSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d897868432ba26eb05c98367f28fc3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocSetPose for sick localization.
    #
    # ROS service SickLocSetPose initializes the vehicle pose
    # by sending cola command ("sMN LocSetPose <posex> <posey> <yaw> <uncertainty>")
    # with parameter
    # <posex>: x coordinate in mm
    # <posey>: y coordinate in mm
    # <yaw>: yaw angle in millidegree, -180000 to +180000
    # <uncertainty>: translation uncertainty in mm
    #
    # See Telegram-Listing-v1.1.0.241R.pdf for further details about 
    # Cola telegrams and this command.
    
    #
    # Request (input)
    #
    
    int32 posex       # x coordinate in mm
    int32 posey       # y coordinate in mm
    int32 yaw         # yaw angle in millidegree, -180000 to +180000
    int32 uncertainty # translation uncertainty in mm
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocSetPoseSrvRequest(null);
    if (msg.posex !== undefined) {
      resolved.posex = msg.posex;
    }
    else {
      resolved.posex = 0
    }

    if (msg.posey !== undefined) {
      resolved.posey = msg.posey;
    }
    else {
      resolved.posey = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0
    }

    if (msg.uncertainty !== undefined) {
      resolved.uncertainty = msg.uncertainty;
    }
    else {
      resolved.uncertainty = 0
    }

    return resolved;
    }
};

class SickLocSetPoseSrvResponse {
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
    // Serializes a message object of type SickLocSetPoseSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetPoseSrvResponse
    let len;
    let data = new SickLocSetPoseSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetPoseSrvResponse';
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
    const resolved = new SickLocSetPoseSrvResponse(null);
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
  Request: SickLocSetPoseSrvRequest,
  Response: SickLocSetPoseSrvResponse,
  md5sum() { return '11bcade26cc02b7bbcb448a2abedd38e'; },
  datatype() { return 'sick_lidar_localization/SickLocSetPoseSrv'; }
};
