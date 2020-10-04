// Auto-generated. Do not edit!

// (in-package sick_lidar_localization.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SickLocColaTelegramMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command_type = null;
      this.command_name = null;
      this.parameter = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command_type')) {
        this.command_type = initObj.command_type
      }
      else {
        this.command_type = 0;
      }
      if (initObj.hasOwnProperty('command_name')) {
        this.command_name = initObj.command_name
      }
      else {
        this.command_name = '';
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocColaTelegramMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command_type]
    bufferOffset = _serializer.int32(obj.command_type, buffer, bufferOffset);
    // Serialize message field [command_name]
    bufferOffset = _serializer.string(obj.command_name, buffer, bufferOffset);
    // Serialize message field [parameter]
    bufferOffset = _arraySerializer.string(obj.parameter, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocColaTelegramMsg
    let len;
    let data = new SickLocColaTelegramMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command_type]
    data.command_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [command_name]
    data.command_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.command_name.length;
    object.parameter.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_lidar_localization/SickLocColaTelegramMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fda058e73f190c37b2ae74d5f8aa66d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ros message SickLocColaTelegramMsg.
    # SickLocColaTelegramMsg publishes Cola-ASCII telegrams for sick localization.
    # See Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.PDF for further details
    # about Cola telgrams
    
    Header header        # ROS Header with sequence id, timestamp and frame id
    
    int32 command_type   # One of the SOPAS Commands sRN (1, Read by name request) or sRA (2, Read by name response) or sMN (3, Method by name request) or sMA (4, Method by name response) or sWN (5, Write by name request)
    
    string command_name  # Name of command like "SetAccessMode", "LocSetResultPoseEnabled", "LocRequestTimestamp", etc.
    
    string[] parameter   # Optional parameter, type and number parameter depend on the command, f.e. "sMN SetAccessMode 3 F4724744" with 2 parameter
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocColaTelegramMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command_type !== undefined) {
      resolved.command_type = msg.command_type;
    }
    else {
      resolved.command_type = 0
    }

    if (msg.command_name !== undefined) {
      resolved.command_name = msg.command_name;
    }
    else {
      resolved.command_name = ''
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = []
    }

    return resolved;
    }
};

module.exports = SickLocColaTelegramMsg;
