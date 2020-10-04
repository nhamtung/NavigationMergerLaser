;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocResultPortTelegramMsg)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocResultPortTelegramMsg (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTTELEGRAMMSG")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTTELEGRAMMSG"))

(in-package "ROS")
;;//! \htmlinclude SickLocResultPortTelegramMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sick_lidar_localization::SickLocResultPortTelegramMsg
  :super ros::object
  :slots (_header _telegram_header _telegram_payload _telegram_trailer _vehicle_time_valid _vehicle_time_sec _vehicle_time_nsec ))

(defmethod sick_lidar_localization::SickLocResultPortTelegramMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:telegram_header __telegram_header) (instance sick_lidar_localization::SickLocResultPortHeaderMsg :init))
    ((:telegram_payload __telegram_payload) (instance sick_lidar_localization::SickLocResultPortPayloadMsg :init))
    ((:telegram_trailer __telegram_trailer) (instance sick_lidar_localization::SickLocResultPortCrcMsg :init))
    ((:vehicle_time_valid __vehicle_time_valid) nil)
    ((:vehicle_time_sec __vehicle_time_sec) 0)
    ((:vehicle_time_nsec __vehicle_time_nsec) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _telegram_header __telegram_header)
   (setq _telegram_payload __telegram_payload)
   (setq _telegram_trailer __telegram_trailer)
   (setq _vehicle_time_valid __vehicle_time_valid)
   (setq _vehicle_time_sec (round __vehicle_time_sec))
   (setq _vehicle_time_nsec (round __vehicle_time_nsec))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:telegram_header
   (&rest __telegram_header)
   (if (keywordp (car __telegram_header))
       (send* _telegram_header __telegram_header)
     (progn
       (if __telegram_header (setq _telegram_header (car __telegram_header)))
       _telegram_header)))
  (:telegram_payload
   (&rest __telegram_payload)
   (if (keywordp (car __telegram_payload))
       (send* _telegram_payload __telegram_payload)
     (progn
       (if __telegram_payload (setq _telegram_payload (car __telegram_payload)))
       _telegram_payload)))
  (:telegram_trailer
   (&rest __telegram_trailer)
   (if (keywordp (car __telegram_trailer))
       (send* _telegram_trailer __telegram_trailer)
     (progn
       (if __telegram_trailer (setq _telegram_trailer (car __telegram_trailer)))
       _telegram_trailer)))
  (:vehicle_time_valid
   (&optional __vehicle_time_valid)
   (if __vehicle_time_valid (setq _vehicle_time_valid __vehicle_time_valid)) _vehicle_time_valid)
  (:vehicle_time_sec
   (&optional __vehicle_time_sec)
   (if __vehicle_time_sec (setq _vehicle_time_sec __vehicle_time_sec)) _vehicle_time_sec)
  (:vehicle_time_nsec
   (&optional __vehicle_time_nsec)
   (if __vehicle_time_nsec (setq _vehicle_time_nsec __vehicle_time_nsec)) _vehicle_time_nsec)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sick_lidar_localization/SickLocResultPortHeaderMsg _telegram_header
    (send _telegram_header :serialization-length)
    ;; sick_lidar_localization/SickLocResultPortPayloadMsg _telegram_payload
    (send _telegram_payload :serialization-length)
    ;; sick_lidar_localization/SickLocResultPortCrcMsg _telegram_trailer
    (send _telegram_trailer :serialization-length)
    ;; bool _vehicle_time_valid
    1
    ;; uint32 _vehicle_time_sec
    4
    ;; uint32 _vehicle_time_nsec
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sick_lidar_localization/SickLocResultPortHeaderMsg _telegram_header
       (send _telegram_header :serialize s)
     ;; sick_lidar_localization/SickLocResultPortPayloadMsg _telegram_payload
       (send _telegram_payload :serialize s)
     ;; sick_lidar_localization/SickLocResultPortCrcMsg _telegram_trailer
       (send _telegram_trailer :serialize s)
     ;; bool _vehicle_time_valid
       (if _vehicle_time_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _vehicle_time_sec
       (write-long _vehicle_time_sec s)
     ;; uint32 _vehicle_time_nsec
       (write-long _vehicle_time_nsec s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sick_lidar_localization/SickLocResultPortHeaderMsg _telegram_header
     (send _telegram_header :deserialize buf ptr-) (incf ptr- (send _telegram_header :serialization-length))
   ;; sick_lidar_localization/SickLocResultPortPayloadMsg _telegram_payload
     (send _telegram_payload :deserialize buf ptr-) (incf ptr- (send _telegram_payload :serialization-length))
   ;; sick_lidar_localization/SickLocResultPortCrcMsg _telegram_trailer
     (send _telegram_trailer :deserialize buf ptr-) (incf ptr- (send _telegram_trailer :serialization-length))
   ;; bool _vehicle_time_valid
     (setq _vehicle_time_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _vehicle_time_sec
     (setq _vehicle_time_sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _vehicle_time_nsec
     (setq _vehicle_time_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sick_lidar_localization::SickLocResultPortTelegramMsg :md5sum-) "4fe7bc3dfc1065d1a29951c990f7baf8")
(setf (get sick_lidar_localization::SickLocResultPortTelegramMsg :datatype-) "sick_lidar_localization/SickLocResultPortTelegramMsg")
(setf (get sick_lidar_localization::SickLocResultPortTelegramMsg :definition-)
      "# Definition of ros message SickLocResultPortTelegramMsg.
# SickLocResultPortTelegramMsg publishes result port telegrams
# for sick localization. See chapter 5.9 (\"About result port telegrams\")
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
# System time of vehicles pose calculated by ros service \"SickLocTimeSync\" using a software pll
#

bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase
uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)
uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)

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
MSG: sick_lidar_localization/SickLocResultPortHeaderMsg
# Definition of ros message SickLocResultPortHeaderMsg.
# SickLocResultPortHeaderMsg publishes the header of a result port telegram
# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")
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
# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")
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
# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.

uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte


")



(provide :sick_lidar_localization/SickLocResultPortTelegramMsg "4fe7bc3dfc1065d1a29951c990f7baf8")


