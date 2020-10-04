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

class SickLocTimeSyncSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_lidar_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_lidar_ms')) {
        this.timestamp_lidar_ms = initObj.timestamp_lidar_ms
      }
      else {
        this.timestamp_lidar_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocTimeSyncSrvRequest
    // Serialize message field [timestamp_lidar_ms]
    bufferOffset = _serializer.uint32(obj.timestamp_lidar_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocTimeSyncSrvRequest
    let len;
    let data = new SickLocTimeSyncSrvRequest(null);
    // Deserialize message field [timestamp_lidar_ms]
    data.timestamp_lidar_ms = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocTimeSyncSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3f76cba46368467cfda2028d43e8ed9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocTimeSync for sick localization.
    #
    # ROS service SickLocTimeSync returns the system time of a vehicle pose from lidar ticks in ms.
    # SickLocTimeSync uses a software pll to calculate the system time from ticks. Therefore at least
    # 7 LocRequestTimestamp measurements are required before time sync becomes valid (default fifo
    # size of the software pll is 7 measurements). Depending on time_sync_rate configured in the
    # launch-file, this initial phase can take several seconds (up to 70 seconds).
    
    #
    # Request (input): Timestamp in ticks
    #
    
    uint32 timestamp_lidar_ms  # Lidar timestamp in milliseconds from LocRequestTimestamp response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocTimeSyncSrvRequest(null);
    if (msg.timestamp_lidar_ms !== undefined) {
      resolved.timestamp_lidar_ms = msg.timestamp_lidar_ms;
    }
    else {
      resolved.timestamp_lidar_ms = 0
    }

    return resolved;
    }
};

class SickLocTimeSyncSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_time_valid = null;
      this.vehicle_time_sec = null;
      this.vehicle_time_nsec = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_time_valid')) {
        this.vehicle_time_valid = initObj.vehicle_time_valid
      }
      else {
        this.vehicle_time_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_time_sec')) {
        this.vehicle_time_sec = initObj.vehicle_time_sec
      }
      else {
        this.vehicle_time_sec = 0;
      }
      if (initObj.hasOwnProperty('vehicle_time_nsec')) {
        this.vehicle_time_nsec = initObj.vehicle_time_nsec
      }
      else {
        this.vehicle_time_nsec = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocTimeSyncSrvResponse
    // Serialize message field [vehicle_time_valid]
    bufferOffset = _serializer.bool(obj.vehicle_time_valid, buffer, bufferOffset);
    // Serialize message field [vehicle_time_sec]
    bufferOffset = _serializer.uint32(obj.vehicle_time_sec, buffer, bufferOffset);
    // Serialize message field [vehicle_time_nsec]
    bufferOffset = _serializer.uint32(obj.vehicle_time_nsec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocTimeSyncSrvResponse
    let len;
    let data = new SickLocTimeSyncSrvResponse(null);
    // Deserialize message field [vehicle_time_valid]
    data.vehicle_time_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_time_sec]
    data.vehicle_time_sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [vehicle_time_nsec]
    data.vehicle_time_nsec = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocTimeSyncSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf6450e0c6b2fb33be19dfbfcc6f9815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #
    # Response (output): System time calculated by software pll
    #
    
    bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase
    uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)
    uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocTimeSyncSrvResponse(null);
    if (msg.vehicle_time_valid !== undefined) {
      resolved.vehicle_time_valid = msg.vehicle_time_valid;
    }
    else {
      resolved.vehicle_time_valid = false
    }

    if (msg.vehicle_time_sec !== undefined) {
      resolved.vehicle_time_sec = msg.vehicle_time_sec;
    }
    else {
      resolved.vehicle_time_sec = 0
    }

    if (msg.vehicle_time_nsec !== undefined) {
      resolved.vehicle_time_nsec = msg.vehicle_time_nsec;
    }
    else {
      resolved.vehicle_time_nsec = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SickLocTimeSyncSrvRequest,
  Response: SickLocTimeSyncSrvResponse,
  md5sum() { return '216ce2f222e12099ae0a51b3bd3cad26'; },
  datatype() { return 'sick_lidar_localization/SickLocTimeSyncSrv'; }
};
