; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocResultPortTelegramMsg.msg.html

(cl:defclass <SickLocResultPortTelegramMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (telegram_header
    :reader telegram_header
    :initarg :telegram_header
    :type sick_lidar_localization-msg:SickLocResultPortHeaderMsg
    :initform (cl:make-instance 'sick_lidar_localization-msg:SickLocResultPortHeaderMsg))
   (telegram_payload
    :reader telegram_payload
    :initarg :telegram_payload
    :type sick_lidar_localization-msg:SickLocResultPortPayloadMsg
    :initform (cl:make-instance 'sick_lidar_localization-msg:SickLocResultPortPayloadMsg))
   (telegram_trailer
    :reader telegram_trailer
    :initarg :telegram_trailer
    :type sick_lidar_localization-msg:SickLocResultPortCrcMsg
    :initform (cl:make-instance 'sick_lidar_localization-msg:SickLocResultPortCrcMsg))
   (vehicle_time_valid
    :reader vehicle_time_valid
    :initarg :vehicle_time_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_time_sec
    :reader vehicle_time_sec
    :initarg :vehicle_time_sec
    :type cl:integer
    :initform 0)
   (vehicle_time_nsec
    :reader vehicle_time_nsec
    :initarg :vehicle_time_nsec
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocResultPortTelegramMsg (<SickLocResultPortTelegramMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocResultPortTelegramMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocResultPortTelegramMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocResultPortTelegramMsg> is deprecated: use sick_lidar_localization-msg:SickLocResultPortTelegramMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:header-val is deprecated.  Use sick_lidar_localization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'telegram_header-val :lambda-list '(m))
(cl:defmethod telegram_header-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:telegram_header-val is deprecated.  Use sick_lidar_localization-msg:telegram_header instead.")
  (telegram_header m))

(cl:ensure-generic-function 'telegram_payload-val :lambda-list '(m))
(cl:defmethod telegram_payload-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:telegram_payload-val is deprecated.  Use sick_lidar_localization-msg:telegram_payload instead.")
  (telegram_payload m))

(cl:ensure-generic-function 'telegram_trailer-val :lambda-list '(m))
(cl:defmethod telegram_trailer-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:telegram_trailer-val is deprecated.  Use sick_lidar_localization-msg:telegram_trailer instead.")
  (telegram_trailer m))

(cl:ensure-generic-function 'vehicle_time_valid-val :lambda-list '(m))
(cl:defmethod vehicle_time_valid-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:vehicle_time_valid-val is deprecated.  Use sick_lidar_localization-msg:vehicle_time_valid instead.")
  (vehicle_time_valid m))

(cl:ensure-generic-function 'vehicle_time_sec-val :lambda-list '(m))
(cl:defmethod vehicle_time_sec-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:vehicle_time_sec-val is deprecated.  Use sick_lidar_localization-msg:vehicle_time_sec instead.")
  (vehicle_time_sec m))

(cl:ensure-generic-function 'vehicle_time_nsec-val :lambda-list '(m))
(cl:defmethod vehicle_time_nsec-val ((m <SickLocResultPortTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:vehicle_time_nsec-val is deprecated.  Use sick_lidar_localization-msg:vehicle_time_nsec instead.")
  (vehicle_time_nsec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocResultPortTelegramMsg>) ostream)
  "Serializes a message object of type '<SickLocResultPortTelegramMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'telegram_header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'telegram_payload) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'telegram_trailer) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_time_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_time_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_time_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_time_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_time_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_time_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_time_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_time_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_time_nsec)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocResultPortTelegramMsg>) istream)
  "Deserializes a message object of type '<SickLocResultPortTelegramMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'telegram_header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'telegram_payload) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'telegram_trailer) istream)
    (cl:setf (cl:slot-value msg 'vehicle_time_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_time_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_time_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_time_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_time_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_time_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_time_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_time_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_time_nsec)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocResultPortTelegramMsg>)))
  "Returns string type for a message object of type '<SickLocResultPortTelegramMsg>"
  "sick_lidar_localization/SickLocResultPortTelegramMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocResultPortTelegramMsg)))
  "Returns string type for a message object of type 'SickLocResultPortTelegramMsg"
  "sick_lidar_localization/SickLocResultPortTelegramMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocResultPortTelegramMsg>)))
  "Returns md5sum for a message object of type '<SickLocResultPortTelegramMsg>"
  "4fe7bc3dfc1065d1a29951c990f7baf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocResultPortTelegramMsg)))
  "Returns md5sum for a message object of type 'SickLocResultPortTelegramMsg"
  "4fe7bc3dfc1065d1a29951c990f7baf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocResultPortTelegramMsg>)))
  "Returns full string definition for message of type '<SickLocResultPortTelegramMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortTelegramMsg.~%# SickLocResultPortTelegramMsg publishes result port telegrams~%# for sick localization. See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%#~%# Header~%#~%~%Header header                                 # ROS Header with sequence id, timestamp and frame id~%~%#~%# Result port telegram~%#~%~%SickLocResultPortHeaderMsg   telegram_header  # 52 byte header of a result port telegram~%SickLocResultPortPayloadMsg  telegram_payload # 52 byte payload of a result port telegram~%SickLocResultPortCrcMsg      telegram_trailer #  2 byte CRC trailer of a result port telegram~%~%#~%# System time of vehicles pose calculated by ros service \"SickLocTimeSync\" using a software pll~%#~%~%bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase~%uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)~%uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortHeaderMsg~%# Definition of ros message SickLocResultPortHeaderMsg.~%# SickLocResultPortHeaderMsg publishes the header of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte~%uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte~%uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte~%uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte~%uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte~%uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte~%uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte~%uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte~%uint64  SystemTime       # Not used. Size: NTP = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortPayloadMsg~%# Definition of ros message SickLocResultPortPayloadMsg.~%# SickLocResultPortPayloadMsg publishes the payload of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte~%uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte~%uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte~%int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte~%uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte~%int32  Reserved2      # Reserved. Size: Int32 = 4 byte~%uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte~%uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte~%int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte~%uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortCrcMsg~%# Definition of ros message SickLocResultPortCrcMsg.~%# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram~%# for sick localization (2 byte). ~%# Checksum details:~%# * Width: 16 bits~%# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)~%# * Initial value = 0xFFFF~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocResultPortTelegramMsg)))
  "Returns full string definition for message of type 'SickLocResultPortTelegramMsg"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortTelegramMsg.~%# SickLocResultPortTelegramMsg publishes result port telegrams~%# for sick localization. See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%#~%# Header~%#~%~%Header header                                 # ROS Header with sequence id, timestamp and frame id~%~%#~%# Result port telegram~%#~%~%SickLocResultPortHeaderMsg   telegram_header  # 52 byte header of a result port telegram~%SickLocResultPortPayloadMsg  telegram_payload # 52 byte payload of a result port telegram~%SickLocResultPortCrcMsg      telegram_trailer #  2 byte CRC trailer of a result port telegram~%~%#~%# System time of vehicles pose calculated by ros service \"SickLocTimeSync\" using a software pll~%#~%~%bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase~%uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)~%uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortHeaderMsg~%# Definition of ros message SickLocResultPortHeaderMsg.~%# SickLocResultPortHeaderMsg publishes the header of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte~%uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte~%uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte~%uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte~%uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte~%uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte~%uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte~%uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte~%uint64  SystemTime       # Not used. Size: NTP = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortPayloadMsg~%# Definition of ros message SickLocResultPortPayloadMsg.~%# SickLocResultPortPayloadMsg publishes the payload of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte~%uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte~%uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte~%int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte~%uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte~%int32  Reserved2      # Reserved. Size: Int32 = 4 byte~%uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte~%uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte~%int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte~%uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortCrcMsg~%# Definition of ros message SickLocResultPortCrcMsg.~%# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram~%# for sick localization (2 byte). ~%# Checksum details:~%# * Width: 16 bits~%# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)~%# * Initial value = 0xFFFF~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocResultPortTelegramMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'telegram_header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'telegram_payload))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'telegram_trailer))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocResultPortTelegramMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocResultPortTelegramMsg
    (cl:cons ':header (header msg))
    (cl:cons ':telegram_header (telegram_header msg))
    (cl:cons ':telegram_payload (telegram_payload msg))
    (cl:cons ':telegram_trailer (telegram_trailer msg))
    (cl:cons ':vehicle_time_valid (vehicle_time_valid msg))
    (cl:cons ':vehicle_time_sec (vehicle_time_sec msg))
    (cl:cons ':vehicle_time_nsec (vehicle_time_nsec msg))
))
