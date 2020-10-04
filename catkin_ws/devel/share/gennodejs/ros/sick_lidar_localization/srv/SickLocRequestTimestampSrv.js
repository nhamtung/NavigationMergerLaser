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

class SickLocRequestTimestampSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocRequestTimestampSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocRequestTimestampSrvRequest
    let len;
    let data = new SickLocRequestTimestampSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocRequestTimestampSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocRequestTimestamp for sick localization.
    #
    # ROS service SickLocRequestTimestamp requests a timestamp from the localization controller
    # by sending cola command LocRequestTimestamp ("sMN LocRequestTimestamp").
    #
    # The service receives and decodes the current timestamp (uint32 timestamp in milliseconds)
    # and calculates the time offset with the following formular:
    #
    # delta_time_ms := mean_time_vehicle_ms - timestamp_lidar_ms
    # mean_time_vehicle_ms := (send_time_vehicle + receive_time_vehicle) / 2
    #                      := vehicles mean timestamp in milliseconds
    # send_time_vehicle    := vehicles timestamp when sending LocRequestTimestamp
    # receive_time_vehicle := vehicles timestamp when receiving the LocRequestTimestamp response
    # timestamp_lidar_ms   := lidar timestamp in milliseconds from LocRequestTimestamp response
    #
    # See Operation-Instruction-v1.1.0.241R.pdf for details about time synchronization and
    # time offset calculation. See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf
    # for further details about Cola telegram LocRequestTimestamp.
    
    #
    # Request (input)
    #
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocRequestTimestampSrvRequest(null);
    return resolved;
    }
};

class SickLocRequestTimestampSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_lidar_ms = null;
      this.mean_time_vehicle_ms = null;
      this.delta_time_ms = null;
      this.send_time_vehicle_sec = null;
      this.send_time_vehicle_nsec = null;
      this.receive_time_vehicle_sec = null;
      this.receive_time_vehicle_nsec = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_lidar_ms')) {
        this.timestamp_lidar_ms = initObj.timestamp_lidar_ms
      }
      else {
        this.timestamp_lidar_ms = 0;
      }
      if (initObj.hasOwnProperty('mean_time_vehicle_ms')) {
        this.mean_time_vehicle_ms = initObj.mean_time_vehicle_ms
      }
      else {
        this.mean_time_vehicle_ms = 0;
      }
      if (initObj.hasOwnProperty('delta_time_ms')) {
        this.delta_time_ms = initObj.delta_time_ms
      }
      else {
        this.delta_time_ms = 0;
      }
      if (initObj.hasOwnProperty('send_time_vehicle_sec')) {
        this.send_time_vehicle_sec = initObj.send_time_vehicle_sec
      }
      else {
        this.send_time_vehicle_sec = 0;
      }
      if (initObj.hasOwnProperty('send_time_vehicle_nsec')) {
        this.send_time_vehicle_nsec = initObj.send_time_vehicle_nsec
      }
      else {
        this.send_time_vehicle_nsec = 0;
      }
      if (initObj.hasOwnProperty('receive_time_vehicle_sec')) {
        this.receive_time_vehicle_sec = initObj.receive_time_vehicle_sec
      }
      else {
        this.receive_time_vehicle_sec = 0;
      }
      if (initObj.hasOwnProperty('receive_time_vehicle_nsec')) {
        this.receive_time_vehicle_nsec = initObj.receive_time_vehicle_nsec
      }
      else {
        this.receive_time_vehicle_nsec = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocRequestTimestampSrvResponse
    // Serialize message field [timestamp_lidar_ms]
    bufferOffset = _serializer.uint32(obj.timestamp_lidar_ms, buffer, bufferOffset);
    // Serialize message field [mean_time_vehicle_ms]
    bufferOffset = _serializer.uint64(obj.mean_time_vehicle_ms, buffer, bufferOffset);
    // Serialize message field [delta_time_ms]
    bufferOffset = _serializer.uint64(obj.delta_time_ms, buffer, bufferOffset);
    // Serialize message field [send_time_vehicle_sec]
    bufferOffset = _serializer.uint32(obj.send_time_vehicle_sec, buffer, bufferOffset);
    // Serialize message field [send_time_vehicle_nsec]
    bufferOffset = _serializer.uint32(obj.send_time_vehicle_nsec, buffer, bufferOffset);
    // Serialize message field [receive_time_vehicle_sec]
    bufferOffset = _serializer.uint32(obj.receive_time_vehicle_sec, buffer, bufferOffset);
    // Serialize message field [receive_time_vehicle_nsec]
    bufferOffset = _serializer.uint32(obj.receive_time_vehicle_nsec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocRequestTimestampSrvResponse
    let len;
    let data = new SickLocRequestTimestampSrvResponse(null);
    // Deserialize message field [timestamp_lidar_ms]
    data.timestamp_lidar_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [mean_time_vehicle_ms]
    data.mean_time_vehicle_ms = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [delta_time_ms]
    data.delta_time_ms = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [send_time_vehicle_sec]
    data.send_time_vehicle_sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [send_time_vehicle_nsec]
    data.send_time_vehicle_nsec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [receive_time_vehicle_sec]
    data.receive_time_vehicle_sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [receive_time_vehicle_nsec]
    data.receive_time_vehicle_nsec = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocRequestTimestampSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae8b1571bf8be63e0bdad9873d14be2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #
    # Response (output)
    #
    
    uint32 timestamp_lidar_ms        # Lidar timestamp in milliseconds from LocRequestTimestamp response
    uint64 mean_time_vehicle_ms      # Vehicle mean timestamp in milliseconds: (send_time_vehicle + receive_time_vehicle) / 2
    uint64 delta_time_ms             # Time offset: mean_time_vehicle_ms - timestamp_lidar_ms
    
    uint32 send_time_vehicle_sec     # Vehicle timestamp when sending LocRequestTimestamp (seconds part of ros timestamp immediately before tcp send)
    uint32 send_time_vehicle_nsec    # Vehicle timestamp when sending LocRequestTimestamp (nano seconds part of ros timestamp immediately before tcp send)
    uint32 receive_time_vehicle_sec  # Vehicle timestamp when receiving the LocRequestTimestamp response (seconds part of ros timestamp immediately after first response byte received)
    uint32 receive_time_vehicle_nsec # Vehicle timestamp when receiving the LocRequestTimestamp response (nano seconds part of ros timestamp immediately after first response byte received)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocRequestTimestampSrvResponse(null);
    if (msg.timestamp_lidar_ms !== undefined) {
      resolved.timestamp_lidar_ms = msg.timestamp_lidar_ms;
    }
    else {
      resolved.timestamp_lidar_ms = 0
    }

    if (msg.mean_time_vehicle_ms !== undefined) {
      resolved.mean_time_vehicle_ms = msg.mean_time_vehicle_ms;
    }
    else {
      resolved.mean_time_vehicle_ms = 0
    }

    if (msg.delta_time_ms !== undefined) {
      resolved.delta_time_ms = msg.delta_time_ms;
    }
    else {
      resolved.delta_time_ms = 0
    }

    if (msg.send_time_vehicle_sec !== undefined) {
      resolved.send_time_vehicle_sec = msg.send_time_vehicle_sec;
    }
    else {
      resolved.send_time_vehicle_sec = 0
    }

    if (msg.send_time_vehicle_nsec !== undefined) {
      resolved.send_time_vehicle_nsec = msg.send_time_vehicle_nsec;
    }
    else {
      resolved.send_time_vehicle_nsec = 0
    }

    if (msg.receive_time_vehicle_sec !== undefined) {
      resolved.receive_time_vehicle_sec = msg.receive_time_vehicle_sec;
    }
    else {
      resolved.receive_time_vehicle_sec = 0
    }

    if (msg.receive_time_vehicle_nsec !== undefined) {
      resolved.receive_time_vehicle_nsec = msg.receive_time_vehicle_nsec;
    }
    else {
      resolved.receive_time_vehicle_nsec = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SickLocRequestTimestampSrvRequest,
  Response: SickLocRequestTimestampSrvResponse,
  md5sum() { return 'ae8b1571bf8be63e0bdad9873d14be2b'; },
  datatype() { return 'sick_lidar_localization/SickLocRequestTimestampSrv'; }
};
