// Auto-generated. Do not edit!

// (in-package r2serial_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RMID = null;
      this.TMID = null;
      this.ID = null;
      this.PID = null;
      this.DataNum = null;
      this.Dta_Low = null;
      this.Dta_High = null;
      this.Sum = null;
    }
    else {
      if (initObj.hasOwnProperty('RMID')) {
        this.RMID = initObj.RMID
      }
      else {
        this.RMID = 0;
      }
      if (initObj.hasOwnProperty('TMID')) {
        this.TMID = initObj.TMID
      }
      else {
        this.TMID = 0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('PID')) {
        this.PID = initObj.PID
      }
      else {
        this.PID = 0;
      }
      if (initObj.hasOwnProperty('DataNum')) {
        this.DataNum = initObj.DataNum
      }
      else {
        this.DataNum = 0;
      }
      if (initObj.hasOwnProperty('Dta_Low')) {
        this.Dta_Low = initObj.Dta_Low
      }
      else {
        this.Dta_Low = 0;
      }
      if (initObj.hasOwnProperty('Dta_High')) {
        this.Dta_High = initObj.Dta_High
      }
      else {
        this.Dta_High = 0;
      }
      if (initObj.hasOwnProperty('Sum')) {
        this.Sum = initObj.Sum
      }
      else {
        this.Sum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Num
    // Serialize message field [RMID]
    bufferOffset = _serializer.uint8(obj.RMID, buffer, bufferOffset);
    // Serialize message field [TMID]
    bufferOffset = _serializer.uint8(obj.TMID, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint8(obj.ID, buffer, bufferOffset);
    // Serialize message field [PID]
    bufferOffset = _serializer.uint8(obj.PID, buffer, bufferOffset);
    // Serialize message field [DataNum]
    bufferOffset = _serializer.uint8(obj.DataNum, buffer, bufferOffset);
    // Serialize message field [Dta_Low]
    bufferOffset = _serializer.uint8(obj.Dta_Low, buffer, bufferOffset);
    // Serialize message field [Dta_High]
    bufferOffset = _serializer.uint8(obj.Dta_High, buffer, bufferOffset);
    // Serialize message field [Sum]
    bufferOffset = _serializer.uint8(obj.Sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Num
    let len;
    let data = new Num(null);
    // Deserialize message field [RMID]
    data.RMID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TMID]
    data.TMID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PID]
    data.PID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DataNum]
    data.DataNum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Dta_Low]
    data.Dta_Low = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Dta_High]
    data.Dta_High = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Sum]
    data.Sum = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'r2serial_driver/Num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '137910bf2ef85fa95265084c3edcdb56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RMID
    uint8 TMID 
    uint8 ID
    uint8 PID
    uint8 DataNum
    uint8 Dta_Low
    uint8 Dta_High
    uint8 Sum
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Num(null);
    if (msg.RMID !== undefined) {
      resolved.RMID = msg.RMID;
    }
    else {
      resolved.RMID = 0
    }

    if (msg.TMID !== undefined) {
      resolved.TMID = msg.TMID;
    }
    else {
      resolved.TMID = 0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.PID !== undefined) {
      resolved.PID = msg.PID;
    }
    else {
      resolved.PID = 0
    }

    if (msg.DataNum !== undefined) {
      resolved.DataNum = msg.DataNum;
    }
    else {
      resolved.DataNum = 0
    }

    if (msg.Dta_Low !== undefined) {
      resolved.Dta_Low = msg.Dta_Low;
    }
    else {
      resolved.Dta_Low = 0
    }

    if (msg.Dta_High !== undefined) {
      resolved.Dta_High = msg.Dta_High;
    }
    else {
      resolved.Dta_High = 0
    }

    if (msg.Sum !== undefined) {
      resolved.Sum = msg.Sum;
    }
    else {
      resolved.Sum = 0
    }

    return resolved;
    }
};

module.exports = Num;
