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

class SickLocResultPortPayloadMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ErrorCode = null;
      this.ScanCounter = null;
      this.Timestamp = null;
      this.PoseX = null;
      this.PoseY = null;
      this.PoseYaw = null;
      this.Reserved1 = null;
      this.Reserved2 = null;
      this.Quality = null;
      this.OutliersRatio = null;
      this.CovarianceX = null;
      this.CovarianceY = null;
      this.CovarianceYaw = null;
      this.Reserved3 = null;
    }
    else {
      if (initObj.hasOwnProperty('ErrorCode')) {
        this.ErrorCode = initObj.ErrorCode
      }
      else {
        this.ErrorCode = 0;
      }
      if (initObj.hasOwnProperty('ScanCounter')) {
        this.ScanCounter = initObj.ScanCounter
      }
      else {
        this.ScanCounter = 0;
      }
      if (initObj.hasOwnProperty('Timestamp')) {
        this.Timestamp = initObj.Timestamp
      }
      else {
        this.Timestamp = 0;
      }
      if (initObj.hasOwnProperty('PoseX')) {
        this.PoseX = initObj.PoseX
      }
      else {
        this.PoseX = 0;
      }
      if (initObj.hasOwnProperty('PoseY')) {
        this.PoseY = initObj.PoseY
      }
      else {
        this.PoseY = 0;
      }
      if (initObj.hasOwnProperty('PoseYaw')) {
        this.PoseYaw = initObj.PoseYaw
      }
      else {
        this.PoseYaw = 0;
      }
      if (initObj.hasOwnProperty('Reserved1')) {
        this.Reserved1 = initObj.Reserved1
      }
      else {
        this.Reserved1 = 0;
      }
      if (initObj.hasOwnProperty('Reserved2')) {
        this.Reserved2 = initObj.Reserved2
      }
      else {
        this.Reserved2 = 0;
      }
      if (initObj.hasOwnProperty('Quality')) {
        this.Quality = initObj.Quality
      }
      else {
        this.Quality = 0;
      }
      if (initObj.hasOwnProperty('OutliersRatio')) {
        this.OutliersRatio = initObj.OutliersRatio
      }
      else {
        this.OutliersRatio = 0;
      }
      if (initObj.hasOwnProperty('CovarianceX')) {
        this.CovarianceX = initObj.CovarianceX
      }
      else {
        this.CovarianceX = 0;
      }
      if (initObj.hasOwnProperty('CovarianceY')) {
        this.CovarianceY = initObj.CovarianceY
      }
      else {
        this.CovarianceY = 0;
      }
      if (initObj.hasOwnProperty('CovarianceYaw')) {
        this.CovarianceYaw = initObj.CovarianceYaw
      }
      else {
        this.CovarianceYaw = 0;
      }
      if (initObj.hasOwnProperty('Reserved3')) {
        this.Reserved3 = initObj.Reserved3
      }
      else {
        this.Reserved3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SickLocResultPortPayloadMsg
    // Serialize message field [ErrorCode]
    bufferOffset = _serializer.uint16(obj.ErrorCode, buffer, bufferOffset);
    // Serialize message field [ScanCounter]
    bufferOffset = _serializer.uint32(obj.ScanCounter, buffer, bufferOffset);
    // Serialize message field [Timestamp]
    bufferOffset = _serializer.uint32(obj.Timestamp, buffer, bufferOffset);
    // Serialize message field [PoseX]
    bufferOffset = _serializer.int32(obj.PoseX, buffer, bufferOffset);
    // Serialize message field [PoseY]
    bufferOffset = _serializer.int32(obj.PoseY, buffer, bufferOffset);
    // Serialize message field [PoseYaw]
    bufferOffset = _serializer.int32(obj.PoseYaw, buffer, bufferOffset);
    // Serialize message field [Reserved1]
    bufferOffset = _serializer.uint32(obj.Reserved1, buffer, bufferOffset);
    // Serialize message field [Reserved2]
    bufferOffset = _serializer.int32(obj.Reserved2, buffer, bufferOffset);
    // Serialize message field [Quality]
    bufferOffset = _serializer.uint8(obj.Quality, buffer, bufferOffset);
    // Serialize message field [OutliersRatio]
    bufferOffset = _serializer.uint8(obj.OutliersRatio, buffer, bufferOffset);
    // Serialize message field [CovarianceX]
    bufferOffset = _serializer.int32(obj.CovarianceX, buffer, bufferOffset);
    // Serialize message field [CovarianceY]
    bufferOffset = _serializer.int32(obj.CovarianceY, buffer, bufferOffset);
    // Serialize message field [CovarianceYaw]
    bufferOffset = _serializer.int32(obj.CovarianceYaw, buffer, bufferOffset);
    // Serialize message field [Reserved3]
    bufferOffset = _serializer.uint64(obj.Reserved3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SickLocResultPortPayloadMsg
    let len;
    let data = new SickLocResultPortPayloadMsg(null);
    // Deserialize message field [ErrorCode]
    data.ErrorCode = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ScanCounter]
    data.ScanCounter = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Timestamp]
    data.Timestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [PoseX]
    data.PoseX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PoseY]
    data.PoseY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PoseYaw]
    data.PoseYaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Reserved1]
    data.Reserved1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Reserved2]
    data.Reserved2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Quality]
    data.Quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [OutliersRatio]
    data.OutliersRatio = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CovarianceX]
    data.CovarianceX = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [CovarianceY]
    data.CovarianceY = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [CovarianceYaw]
    data.CovarianceYaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Reserved3]
    data.Reserved3 = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_lidar_localization/SickLocResultPortPayloadMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dda37f4f942d644e9c72988be7984688';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SickLocResultPortPayloadMsg(null);
    if (msg.ErrorCode !== undefined) {
      resolved.ErrorCode = msg.ErrorCode;
    }
    else {
      resolved.ErrorCode = 0
    }

    if (msg.ScanCounter !== undefined) {
      resolved.ScanCounter = msg.ScanCounter;
    }
    else {
      resolved.ScanCounter = 0
    }

    if (msg.Timestamp !== undefined) {
      resolved.Timestamp = msg.Timestamp;
    }
    else {
      resolved.Timestamp = 0
    }

    if (msg.PoseX !== undefined) {
      resolved.PoseX = msg.PoseX;
    }
    else {
      resolved.PoseX = 0
    }

    if (msg.PoseY !== undefined) {
      resolved.PoseY = msg.PoseY;
    }
    else {
      resolved.PoseY = 0
    }

    if (msg.PoseYaw !== undefined) {
      resolved.PoseYaw = msg.PoseYaw;
    }
    else {
      resolved.PoseYaw = 0
    }

    if (msg.Reserved1 !== undefined) {
      resolved.Reserved1 = msg.Reserved1;
    }
    else {
      resolved.Reserved1 = 0
    }

    if (msg.Reserved2 !== undefined) {
      resolved.Reserved2 = msg.Reserved2;
    }
    else {
      resolved.Reserved2 = 0
    }

    if (msg.Quality !== undefined) {
      resolved.Quality = msg.Quality;
    }
    else {
      resolved.Quality = 0
    }

    if (msg.OutliersRatio !== undefined) {
      resolved.OutliersRatio = msg.OutliersRatio;
    }
    else {
      resolved.OutliersRatio = 0
    }

    if (msg.CovarianceX !== undefined) {
      resolved.CovarianceX = msg.CovarianceX;
    }
    else {
      resolved.CovarianceX = 0
    }

    if (msg.CovarianceY !== undefined) {
      resolved.CovarianceY = msg.CovarianceY;
    }
    else {
      resolved.CovarianceY = 0
    }

    if (msg.CovarianceYaw !== undefined) {
      resolved.CovarianceYaw = msg.CovarianceYaw;
    }
    else {
      resolved.CovarianceYaw = 0
    }

    if (msg.Reserved3 !== undefined) {
      resolved.Reserved3 = msg.Reserved3;
    }
    else {
      resolved.Reserved3 = 0
    }

    return resolved;
    }
};

module.exports = SickLocResultPortPayloadMsg;
