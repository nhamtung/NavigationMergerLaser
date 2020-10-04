; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocResultPortTestcaseMsg.msg.html

(cl:defclass <SickLocResultPortTestcaseMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (binary_data
    :reader binary_data
    :initarg :binary_data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (telegram_msg
    :reader telegram_msg
    :initarg :telegram_msg
    :type sick_lidar_localization-msg:SickLocResultPortTelegramMsg
    :initform (cl:make-instance 'sick_lidar_localization-msg:SickLocResultPortTelegramMsg)))
)

(cl:defclass SickLocResultPortTestcaseMsg (<SickLocResultPortTestcaseMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocResultPortTestcaseMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocResultPortTestcaseMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocResultPortTestcaseMsg> is deprecated: use sick_lidar_localization-msg:SickLocResultPortTestcaseMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SickLocResultPortTestcaseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:header-val is deprecated.  Use sick_lidar_localization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'binary_data-val :lambda-list '(m))
(cl:defmethod binary_data-val ((m <SickLocResultPortTestcaseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:binary_data-val is deprecated.  Use sick_lidar_localization-msg:binary_data instead.")
  (binary_data m))

(cl:ensure-generic-function 'telegram_msg-val :lambda-list '(m))
(cl:defmethod telegram_msg-val ((m <SickLocResultPortTestcaseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:telegram_msg-val is deprecated.  Use sick_lidar_localization-msg:telegram_msg instead.")
  (telegram_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocResultPortTestcaseMsg>) ostream)
  "Serializes a message object of type '<SickLocResultPortTestcaseMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'binary_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'binary_data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'telegram_msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocResultPortTestcaseMsg>) istream)
  "Deserializes a message object of type '<SickLocResultPortTestcaseMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'binary_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'binary_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'telegram_msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocResultPortTestcaseMsg>)))
  "Returns string type for a message object of type '<SickLocResultPortTestcaseMsg>"
  "sick_lidar_localization/SickLocResultPortTestcaseMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocResultPortTestcaseMsg)))
  "Returns string type for a message object of type 'SickLocResultPortTestcaseMsg"
  "sick_lidar_localization/SickLocResultPortTestcaseMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocResultPortTestcaseMsg>)))
  "Returns md5sum for a message object of type '<SickLocResultPortTestcaseMsg>"
  "07de600920e51362dfacfa2cfcff3495")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocResultPortTestcaseMsg)))
  "Returns md5sum for a message object of type 'SickLocResultPortTestcaseMsg"
  "07de600920e51362dfacfa2cfcff3495")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocResultPortTestcaseMsg>)))
  "Returns full string definition for message of type '<SickLocResultPortTestcaseMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortTestcaseMsg.~%# SickLocResultPortTestcaseMsg publishes testcases for result port telegrams~%# in both binary format (simulated result port telegrams from localization controller)~%# and ros message format of type SickLocResultPortTelegramMsg (published by sim_loc_driver).~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%Header header                             # ROS Header with sequence id, timestamp and frame id~%uint8[]                      binary_data  # binary encoded result port telegram~%SickLocResultPortTelegramMsg telegram_msg # decoded result port telegram~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortTelegramMsg~%# Definition of ros message SickLocResultPortTelegramMsg.~%# SickLocResultPortTelegramMsg publishes result port telegrams~%# for sick localization. See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%#~%# Header~%#~%~%Header header                                 # ROS Header with sequence id, timestamp and frame id~%~%#~%# Result port telegram~%#~%~%SickLocResultPortHeaderMsg   telegram_header  # 52 byte header of a result port telegram~%SickLocResultPortPayloadMsg  telegram_payload # 52 byte payload of a result port telegram~%SickLocResultPortCrcMsg      telegram_trailer #  2 byte CRC trailer of a result port telegram~%~%#~%# System time of vehicles pose calculated by ros service \"SickLocTimeSync\" using a software pll~%#~%~%bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase~%uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)~%uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortHeaderMsg~%# Definition of ros message SickLocResultPortHeaderMsg.~%# SickLocResultPortHeaderMsg publishes the header of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte~%uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte~%uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte~%uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte~%uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte~%uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte~%uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte~%uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte~%uint64  SystemTime       # Not used. Size: NTP = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortPayloadMsg~%# Definition of ros message SickLocResultPortPayloadMsg.~%# SickLocResultPortPayloadMsg publishes the payload of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte~%uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte~%uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte~%int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte~%uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte~%int32  Reserved2      # Reserved. Size: Int32 = 4 byte~%uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte~%uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte~%int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte~%uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortCrcMsg~%# Definition of ros message SickLocResultPortCrcMsg.~%# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram~%# for sick localization (2 byte). ~%# Checksum details:~%# * Width: 16 bits~%# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)~%# * Initial value = 0xFFFF~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocResultPortTestcaseMsg)))
  "Returns full string definition for message of type 'SickLocResultPortTestcaseMsg"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortTestcaseMsg.~%# SickLocResultPortTestcaseMsg publishes testcases for result port telegrams~%# in both binary format (simulated result port telegrams from localization controller)~%# and ros message format of type SickLocResultPortTelegramMsg (published by sim_loc_driver).~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%Header header                             # ROS Header with sequence id, timestamp and frame id~%uint8[]                      binary_data  # binary encoded result port telegram~%SickLocResultPortTelegramMsg telegram_msg # decoded result port telegram~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortTelegramMsg~%# Definition of ros message SickLocResultPortTelegramMsg.~%# SickLocResultPortTelegramMsg publishes result port telegrams~%# for sick localization. See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%#~%# Header~%#~%~%Header header                                 # ROS Header with sequence id, timestamp and frame id~%~%#~%# Result port telegram~%#~%~%SickLocResultPortHeaderMsg   telegram_header  # 52 byte header of a result port telegram~%SickLocResultPortPayloadMsg  telegram_payload # 52 byte payload of a result port telegram~%SickLocResultPortCrcMsg      telegram_trailer #  2 byte CRC trailer of a result port telegram~%~%#~%# System time of vehicles pose calculated by ros service \"SickLocTimeSync\" using a software pll~%#~%~%bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase~%uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)~%uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortHeaderMsg~%# Definition of ros message SickLocResultPortHeaderMsg.~%# SickLocResultPortHeaderMsg publishes the header of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte~%uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte~%uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte~%uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte~%uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte~%uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte~%uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte~%uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte~%uint64  SystemTime       # Not used. Size: NTP = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortPayloadMsg~%# Definition of ros message SickLocResultPortPayloadMsg.~%# SickLocResultPortPayloadMsg publishes the payload of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte~%uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte~%uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte~%int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte~%uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte~%int32  Reserved2      # Reserved. Size: Int32 = 4 byte~%uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte~%uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte~%int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte~%uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte~%~%~%================================================================================~%MSG: sick_lidar_localization/SickLocResultPortCrcMsg~%# Definition of ros message SickLocResultPortCrcMsg.~%# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram~%# for sick localization (2 byte). ~%# Checksum details:~%# * Width: 16 bits~%# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)~%# * Initial value = 0xFFFF~%# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.~%~%uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocResultPortTestcaseMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'binary_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'telegram_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocResultPortTestcaseMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocResultPortTestcaseMsg
    (cl:cons ':header (header msg))
    (cl:cons ':binary_data (binary_data msg))
    (cl:cons ':telegram_msg (telegram_msg msg))
))
