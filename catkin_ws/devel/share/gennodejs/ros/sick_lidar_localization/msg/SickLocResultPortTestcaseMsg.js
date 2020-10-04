// Auto-generated. Do not edit!

// (in-package sick_lidar_localization.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SickLocResultPortTelegramMsg = require('./SickLocResultPortTelegramMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SickLocResultPortTestcaseMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.binary_data = null;
      this.telegram_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('binary_data')) {
        this.binary_data = initObj.binary_data
      }
      else {
        this.binary_data = [];
      }
      if (initObj.hasOwnProperty('telegram_msg')) {
        this.telegram_msg = initObj.telegram_msg
      }
      else {
        this.telegram_msg = new SickLocResultPortTelegramMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocResultPortTestcaseMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [binary_data]
    bufferOffset = _arraySerializer.uint8(obj.binary_data, buffer, bufferOffset, null);
    // Serialize message field [telegram_msg]
    bufferOffset = SickLocResultPortTelegramMsg.serialize(obj.telegram_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocResultPortTestcaseMsg
    let len;
    let data = new SickLocResultPortTestcaseMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [binary_data]
    data.binary_data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [telegram_msg]
    data.telegram_msg = SickLocResultPortTelegramMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.binary_data.length;
    length += SickLocResultPortTelegramMsg.getMessageSize(object.telegram_msg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_lidar_localization/SickLocResultPortTestcaseMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07de600920e51362dfacfa2cfcff3495';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of ros message SickLocResultPortTestcaseMsg.
    # SickLocResultPortTestcaseMsg publishes testcases for result port telegrams
    # in both binary format (simulated result port telegrams from localization controller)
    # and ros message format of type SickLocResultPortTelegramMsg (published by sim_loc_driver).
    # See chapter 5.9 ("About result port telegrams") of the operation manual for further details.
    
    Header header                             # ROS Header with sequence id, timestamp and frame id
    uint8[]                      binary_data  # binary encoded result port telegram
    SickLocResultPortTelegramMsg telegram_msg # decoded result port telegram
    
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
    
    ================================================================================
    MSG: sick_lidar_localization/SickLocResultPortTelegramMsg
    # Definition of ros message SickLocResultPortTelegramMsg.
    # SickLocResultPortTelegramMsg publishes result port telegrams
    # for sick localization. See chapter 5.9 ("About result port telegrams")
    # of the operation manual for further details.
    
    #
    # Header
    #
    
    Header header                                 # ROS Header with sequence id, timestamp and frame id
    
    #
    # Result port telegram
    #
    
    SickLocResultPortHeaderMsg   telegram_header  # 52 byte header of a result port telegram
    SickLocResultPortPayloadMsg  telegram_payload # 52 byte payload of a result port telegram
    SickLocResultPortCrcMsg      telegram_trailer #  2 byte CRC trailer of a result port telegram
    
    #
    # System time of vehicles pose calculated by ros service "SickLocTimeSync" using a software pll
    #
    
    bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase
    uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)
    uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)
    
    ================================================================================
    MSG: sick_lidar_localization/SickLocResultPortHeaderMsg
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
    
    
    ================================================================================
    MSG: sick_lidar_localization/SickLocResultPortPayloadMsg
    # Definition of ros message SickLocResultPortPayloadMsg.
    # SickLocResultPortPayloadMsg publishes the payload of a result port telegram
    # for sick localization (52 byte). See chapter 5.9 ("About result port telegrams")
    # of the operation manual for further details.
    
    uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte
    uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte
    uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte
    int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte
    int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte
    int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte
    uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte
    int32  Reserved2      # Reserved. Size: Int32 = 4 byte
    uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte
    uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte
    int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte
    int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte
    int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte
    uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte
    
    
    ================================================================================
    MSG: sick_lidar_localization/SickLocResultPortCrcMsg
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
    const resolved = new SickLocResultPortTestcaseMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.binary_data !== undefined) {
      resolved.binary_data = msg.binary_data;
    }
    else {
      resolved.binary_data = []
    }

    if (msg.telegram_msg !== undefined) {
      resolved.telegram_msg = SickLocResultPortTelegramMsg.Resolve(msg.telegram_msg)
    }
    else {
      resolved.telegram_msg = new SickLocResultPortTelegramMsg()
    }

    return resolved;
    }
};

module.exports = SickLocResultPortTestcaseMsg;
