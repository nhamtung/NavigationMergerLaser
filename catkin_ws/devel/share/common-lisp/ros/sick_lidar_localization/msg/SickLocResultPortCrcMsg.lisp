; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocResultPortCrcMsg.msg.html

(cl:defclass <SickLocResultPortCrcMsg> (roslisp-msg-protocol:ros-message)
  ((Checksum
    :reader Checksum
    :initarg :Checksum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SickLocResultPortCrcMsg (<SickLocResultPortCrcMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocResultPortCrcMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocResultPortCrcMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocResultPortCrcMsg> is deprecated: use sick_lidar_localization-msg:SickLocResultPortCrcMsg instead.")))

(cl:ensure-generic-function 'Checksum-val :lambda-list '(m))
(cl:defmethod Checksum-val ((m <SickLocResultPortCrcMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Checksum-val is deprecated.  Use sick_lidar_localization-msg:Checksum instead.")
  (Checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocResultPortCrcMsg>) ostream)
  "Serializes a message object of type '<SickLocResultPortCrcMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Checksum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocResultPortCrcMsg>) istream)
  "Deserializes a message object of type '<SickLocResultPortCrcMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Checksum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocResultPortCrcMsg>)))
  "Returns string type for a message object of type '<SickLocResultPortCrcMsg>"
  "sick_lidar_localization/SickLocResultPortCrcMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocResultPortCrcMsg)))
  "Returns string type for a message object of type 'SickLocResultPortCrcMsg"
  "sick_lidar_localization/SickLocResultPortCrcMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocResultPortCrcMsg>)))
  "Returns md5sum for a message object of type '<SickLocResultPortCrcMsg>"
  "df59506c295b6d20407c4cced0a0b9aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocResultPortCrcMsg)))
  "Returns md5sum for a message object of type 'SickLocResultPortCrcMsg"
  "df59506c295b6d20407c4cced0a0b9aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocResultPortCrcMsg>)))
  "Returns full string definition for message of type '<SickLocResultPortCrcMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortCrcMsg.~%# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram~%# for sick localization (2 byte). ~%# Checksum details:~%# * Width: 16 bits~%# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)~%# * Initial value = 0xFFFF~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocResultPortCrcMsg)))
  "Returns full string definition for message of type 'SickLocResultPortCrcMsg"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortCrcMsg.~%# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram~%# for sick localization (2 byte). ~%# Checksum details:~%# * Width: 16 bits~%# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)~%# * Initial value = 0xFFFF~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocResultPortCrcMsg>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocResultPortCrcMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocResultPortCrcMsg
    (cl:cons ':Checksum (Checksum msg))
))
