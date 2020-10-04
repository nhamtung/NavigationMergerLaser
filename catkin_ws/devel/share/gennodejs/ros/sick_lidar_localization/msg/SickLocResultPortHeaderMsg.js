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

class SickLocResultPortHeaderMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MagicWord = null;
      this.Length = null;
      this.PayloadType = null;
      this.PayloadVersion = null;
      this.OrderNumber = null;
      this.SerialNumber = null;
      this.FW_Version = null;
      this.TelegramCounter = null;
      this.SystemTime = null;
    }
    else {
      if (initObj.hasOwnProperty('MagicWord')) {
        this.MagicWord = initObj.MagicWord
      }
      else {
        this.MagicWord = 0;
      }
      if (initObj.hasOwnProperty('Length')) {
        this.Length = initObj.Length
      }
      else {
        this.Length = 0;
      }
      if (initObj.hasOwnProperty('PayloadType')) {
        this.PayloadType = initObj.PayloadType
      }
      else {
        this.PayloadType = 0;
      }
      if (initObj.hasOwnProperty('PayloadVersion')) {
        this.PayloadVersion = initObj.PayloadVersion
      }
      else {
        this.PayloadVersion = 0;
      }
      if (initObj.hasOwnProperty('OrderNumber')) {
        this.OrderNumber = initObj.OrderNumber
      }
      else {
        this.OrderNumber = 0;
      }
      if (initObj.hasOwnProperty('SerialNumber')) {
        this.SerialNumber = initObj.SerialNumber
      }
      else {
        this.SerialNumber = 0;
      }
      if (initObj.hasOwnProperty('FW_Version')) {
        this.FW_Version = initObj.FW_Version
      }
      else {
        this.FW_Version = [];
      }
      if (initObj.hasOwnProperty('TelegramCounter')) {
        this.TelegramCounter = initObj.TelegramCounter
      }
      else {
        this.TelegramCounter = 0;
      }
      if (initObj.hasOwnProperty('SystemTime')) {
        this.SystemTime = initObj.SystemTime
      }
      else {
        this.SystemTime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocResultPortHeaderMsg
    // Serialize message field [MagicWord]
    bufferOffset = _serializer.uint32(obj.MagicWord, buffer, bufferOffset);
    // Serialize message field [Length]
    bufferOffset = _serializer.uint32(obj.Length, buffer, bufferOffset);
    // Serialize message field [PayloadType]
    bufferOffset = _serializer.uint16(obj.PayloadType, buffer, bufferOffset);
    // Serialize message field [PayloadVersion]
    bufferOffset = _serializer.uint16(obj.PayloadVersion, buffer, bufferOffset);
    // Serialize message field [OrderNumber]
    bufferOffset = _serializer.uint32(obj.OrderNumber, buffer, bufferOffset);
    // Serialize message field [SerialNumber]
    bufferOffset = _serializer.uint32(obj.SerialNumber, buffer, bufferOffset);
    // Serialize message field [FW_Version]
    bufferOffset = _arraySerializer.uint8(obj.FW_Version, buffer, bufferOffset, null);
    // Serialize message field [TelegramCounter]
    bufferOffset = _serializer.uint32(obj.TelegramCounter, buffer, bufferOffset);
    // Serialize message field [SystemTime]
    bufferOffset = _serializer.uint64(obj.SystemTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocResultPortHeaderMsg
    let len;
    let data = new SickLocResultPortHeaderMsg(null);
    // Deserialize message field [MagicWord]
    data.MagicWord = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Length]
    data.Length = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [PayloadType]
    data.PayloadType = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [PayloadVersion]
    data.PayloadVersion = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [OrderNumber]
    data.OrderNumber = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [SerialNumber]
    data.SerialNumber = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [FW_Version]
    data.FW_Version = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [TelegramCounter]
    data.TelegramCounter = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [SystemTime]
    data.SystemTime = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.FW_Version.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_lidar_localization/SickLocResultPortHeaderMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2faf4992147f30886f5a055c14ae68b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ros message SickLocResultPortHeaderMsg.
    # SickLocResultPortHeaderMsg publishes the header of a result port telegram
    # for sick localization (52 byte). See chapter 5.9 ("About result port telegrams")
    # of the operation manual for further details.
    
    uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte
    uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte
    uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte
    uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte
    uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte
    uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte
    uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte
    uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte
    uint64  SystemTime       # Not used. Size: NTP = 8 byte
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocResultPortHeaderMsg(null);
    if (msg.MagicWord !== undefined) {
      resolved.MagicWord = msg.MagicWord;
    }
    else {
      resolved.MagicWord = 0
    }

    if (msg.Length !== undefined) {
      resolved.Length = msg.Length;
    }
    else {
      resolved.Length = 0
    }

    if (msg.PayloadType !== undefined) {
      resolved.PayloadType = msg.PayloadType;
    }
    else {
      resolved.PayloadType = 0
    }

    if (msg.PayloadVersion !== undefined) {
      resolved.PayloadVersion = msg.PayloadVersion;
    }
    else {
      resolved.PayloadVersion = 0
    }

    if (msg.OrderNumber !== undefined) {
      resolved.OrderNumber = msg.OrderNumber;
    }
    else {
      resolved.OrderNumber = 0
    }

    if (msg.SerialNumber !== undefined) {
      resolved.SerialNumber = msg.SerialNumber;
    }
    else {
      resolved.SerialNumber = 0
    }

    if (msg.FW_Version !== undefined) {
      resolved.FW_Version = msg.FW_Version;
    }
    else {
      resolved.FW_Version = []
    }

    if (msg.TelegramCounter !== undefined) {
      resolved.TelegramCounter = msg.TelegramCounter;
    }
    else {
      resolved.TelegramCounter = 0
    }

    if (msg.SystemTime !== undefined) {
      resolved.SystemTime = msg.SystemTime;
    }
    else {
      resolved.SystemTime = 0
    }

    return resolved;
    }
};

module.exports = SickLocResultPortHeaderMsg;
