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

class SickLocColaTelegramSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cola_ascii_request = null;
      this.wait_response_timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('cola_ascii_request')) {
        this.cola_ascii_request = initObj.cola_ascii_request
      }
      else {
        this.cola_ascii_request = '';
      }
      if (initObj.hasOwnProperty('wait_response_timeout')) {
        this.wait_response_timeout = initObj.wait_response_timeout
      }
      else {
        this.wait_response_timeout = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocColaTelegramSrvRequest
    // Serialize message field [cola_ascii_request]
    bufferOffset = _serializer.string(obj.cola_ascii_request, buffer, bufferOffset);
    // Serialize message field [wait_response_timeout]
    bufferOffset = _serializer.float32(obj.wait_response_timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocColaTelegramSrvRequest
    let len;
    let data = new SickLocColaTelegramSrvRequest(null);
    // Deserialize message field [cola_ascii_request]
    data.cola_ascii_request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wait_response_timeout]
    data.wait_response_timeout = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cola_ascii_request.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocColaTelegramSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '568bb3d36a83d508d37ba8ffb718f400';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ROS service SickLocColaTelegram for sick localization.
    # ROS service SickLocColaTelegram encodes and sends a Cola telegram to the localization controller,
    # receives and encodes the answer from the controller.
    #
    # See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf
    # for further details about Cola telgrams.
    
    #
    # Request (input)
    #
    
    string  cola_ascii_request       # Cola-ASCII telegram to send to the localization controller, f.e. "sRN SetAccessMode 3 F4724744".
    float32 wait_response_timeout    # Timeout for the controller response in secondes. Use 0.0 for Cola requests without controller response.
    # bool send_binary               # Not used (true: send binary telegram, false/default: send ASCII telegram)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocColaTelegramSrvRequest(null);
    if (msg.cola_ascii_request !== undefined) {
      resolved.cola_ascii_request = msg.cola_ascii_request;
    }
    else {
      resolved.cola_ascii_request = ''
    }

    if (msg.wait_response_timeout !== undefined) {
      resolved.wait_response_timeout = msg.wait_response_timeout;
    }
    else {
      resolved.wait_response_timeout = 0.0
    }

    return resolved;
    }
};

class SickLocColaTelegramSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cola_ascii_response = null;
      this.send_timestamp_sec = null;
      this.send_timestamp_nsec = null;
      this.receive_timestamp_sec = null;
      this.receive_timestamp_nsec = null;
    }
    else {
      if (initObj.hasOwnProperty('cola_ascii_response')) {
        this.cola_ascii_response = initObj.cola_ascii_response
      }
      else {
        this.cola_ascii_response = '';
      }
      if (initObj.hasOwnProperty('send_timestamp_sec')) {
        this.send_timestamp_sec = initObj.send_timestamp_sec
      }
      else {
        this.send_timestamp_sec = 0;
      }
      if (initObj.hasOwnProperty('send_timestamp_nsec')) {
        this.send_timestamp_nsec = initObj.send_timestamp_nsec
      }
      else {
        this.send_timestamp_nsec = 0;
      }
      if (initObj.hasOwnProperty('receive_timestamp_sec')) {
        this.receive_timestamp_sec = initObj.receive_timestamp_sec
      }
      else {
        this.receive_timestamp_sec = 0;
      }
      if (initObj.hasOwnProperty('receive_timestamp_nsec')) {
        this.receive_timestamp_nsec = initObj.receive_timestamp_nsec
      }
      else {
        this.receive_timestamp_nsec = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocColaTelegramSrvResponse
    // Serialize message field [cola_ascii_response]
    bufferOffset = _serializer.string(obj.cola_ascii_response, buffer, bufferOffset);
    // Serialize message field [send_timestamp_sec]
    bufferOffset = _serializer.uint32(obj.send_timestamp_sec, buffer, bufferOffset);
    // Serialize message field [send_timestamp_nsec]
    bufferOffset = _serializer.uint32(obj.send_timestamp_nsec, buffer, bufferOffset);
    // Serialize message field [receive_timestamp_sec]
    bufferOffset = _serializer.uint32(obj.receive_timestamp_sec, buffer, bufferOffset);
    // Serialize message field [receive_timestamp_nsec]
    bufferOffset = _serializer.uint32(obj.receive_timestamp_nsec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocColaTelegramSrvResponse
    let len;
    let data = new SickLocColaTelegramSrvResponse(null);
    // Deserialize message field [cola_ascii_response]
    data.cola_ascii_response = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [send_timestamp_sec]
    data.send_timestamp_sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [send_timestamp_nsec]
    data.send_timestamp_nsec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [receive_timestamp_sec]
    data.receive_timestamp_sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [receive_timestamp_nsec]
    data.receive_timestamp_nsec = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cola_ascii_response.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sick_lidar_localization/SickLocColaTelegramSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a966f9c77cc89ffe63caaa088f93373';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #
    # Response (output)
    #
    
    string cola_ascii_response       # Response from the localization controller (empty in case of connection failures, communication errors or timeouts)
    uint32 send_timestamp_sec        # Send timestamp (seconds part of ros timestamp immediately before tcp send)
    uint32 send_timestamp_nsec       # Send timestamp (nano seconds part of ros timestamp immediately before tcp send)
    uint32 receive_timestamp_sec     # Receive timestamp (seconds part of ros timestamp immediately after first response byte received)
    uint32 receive_timestamp_nsec    # Receive timestamp (nano seconds part of ros timestamp immediately after first response byte received)
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocColaTelegramSrvResponse(null);
    if (msg.cola_ascii_response !== undefined) {
      resolved.cola_ascii_response = msg.cola_ascii_response;
    }
    else {
      resolved.cola_ascii_response = ''
    }

    if (msg.send_timestamp_sec !== undefined) {
      resolved.send_timestamp_sec = msg.send_timestamp_sec;
    }
    else {
      resolved.send_timestamp_sec = 0
    }

    if (msg.send_timestamp_nsec !== undefined) {
      resolved.send_timestamp_nsec = msg.send_timestamp_nsec;
    }
    else {
      resolved.send_timestamp_nsec = 0
    }

    if (msg.receive_timestamp_sec !== undefined) {
      resolved.receive_timestamp_sec = msg.receive_timestamp_sec;
    }
    else {
      resolved.receive_timestamp_sec = 0
    }

    if (msg.receive_timestamp_nsec !== undefined) {
      resolved.receive_timestamp_nsec = msg.receive_timestamp_nsec;
    }
    else {
      resolved.receive_timestamp_nsec = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SickLocColaTelegramSrvRequest,
  Response: SickLocColaTelegramSrvResponse,
  md5sum() { return '60dfc3041906873e51cdec40ce270a34'; },
  datatype() { return 'sick_lidar_localization/SickLocColaTelegramSrv'; }
};
