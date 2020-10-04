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

class SickLocSetResultPortSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.port = null;
    }
    else {
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocSetResultPortSrvRequest
    // Serialize message field [port]
    bufferOffset = _serializer.int32(obj.port, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultPortSrvRequest
    let len;
    let data = new SickLocSetResultPortSrvRequest(null);
    // Deserialize message field [port]
    data.port = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultPortSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '632683733b5d3fa23d220a527594ce63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocSetResultPort for sick localization.
    #
    # ROS service SickLocSetResultPort sets the TCP-port for result output telegrams
    # by sending cola command ("sMN LocSetResultPort <port>")
    # with parameter
    # <port>: TCP-port for result output telegrams (default: 2201)
    #
    # See Telegram-Listing-v1.1.0.241R.pdf for further details about 
    # Cola telegrams and this command.
    
    #
    # Request (input)
    #
    
    int32 port # TCP-port for result output telegrams (default: 2201)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocSetResultPortSrvRequest(null);
    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    return resolved;
    }
};

class SickLocSetResultPortSrvResponse {
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
    // Serializes a message object of type SickLocSetResultPortSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocSetResultPortSrvResponse
    let len;
    let data = new SickLocSetResultPortSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocSetResultPortSrvResponse';
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
    const resolved = new SickLocSetResultPortSrvResponse(null);
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
  Request: SickLocSetResultPortSrvRequest,
  Response: SickLocSetResultPortSrvResponse,
  md5sum() { return '22d338505934787b6445bcb45da196e0'; },
  datatype() { return 'sick_lidar_localization/SickLocSetResultPortSrv'; }
};
