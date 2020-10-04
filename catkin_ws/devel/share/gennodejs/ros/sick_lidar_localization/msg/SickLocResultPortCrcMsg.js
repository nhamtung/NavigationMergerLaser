// Auto-generated. Do not edit!

// (in-package sick_lidar_localization.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SickLocResultPortCrcMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('Checksum')) {
        this.Checksum = initObj.Checksum
      }
      else {
        this.Checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocResultPortCrcMsg
    // Serialize message field [Checksum]
    bufferOffset = _serializer.uint16(obj.Checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocResultPortCrcMsg
    let len;
    let data = new SickLocResultPortCrcMsg(null);
    // Deserialize message field [Checksum]
    data.Checksum = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_lidar_localization/SickLocResultPortCrcMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df59506c295b6d20407c4cced0a0b9aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ros message SickLocResultPortCrcMsg.
    # SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram
    # for sick localization (2 byte). 
    # Checksum details:
    # * Width: 16 bits
    # * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)
    # * Initial value = 0xFFFF
    # See chapter 5.9 ("About result port telegrams") of the operation manual for further details.
    
    uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocResultPortCrcMsg(null);
    if (msg.Checksum !== undefined) {
      resolved.Checksum = msg.Checksum;
    }
    else {
      resolved.Checksum = 0
    }

    return resolved;
    }
};

module.exports = SickLocResultPortCrcMsg;
