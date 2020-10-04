; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocResultPortHeaderMsg.msg.html

(cl:defclass <SickLocResultPortHeaderMsg> (roslisp-msg-protocol:ros-message)
  ((MagicWord
    :reader MagicWord
    :initarg :MagicWord
    :type cl:integer
    :initform 0)
   (Length
    :reader Length
    :initarg :Length
    :type cl:integer
    :initform 0)
   (PayloadType
    :reader PayloadType
    :initarg :PayloadType
    :type cl:fixnum
    :initform 0)
   (PayloadVersion
    :reader PayloadVersion
    :initarg :PayloadVersion
    :type cl:fixnum
    :initform 0)
   (OrderNumber
    :reader OrderNumber
    :initarg :OrderNumber
    :type cl:integer
    :initform 0)
   (SerialNumber
    :reader SerialNumber
    :initarg :SerialNumber
    :type cl:integer
    :initform 0)
   (FW_Version
    :reader FW_Version
    :initarg :FW_Version
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (TelegramCounter
    :reader TelegramCounter
    :initarg :TelegramCounter
    :type cl:integer
    :initform 0)
   (SystemTime
    :reader SystemTime
    :initarg :SystemTime
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocResultPortHeaderMsg (<SickLocResultPortHeaderMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocResultPortHeaderMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocResultPortHeaderMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocResultPortHeaderMsg> is deprecated: use sick_lidar_localization-msg:SickLocResultPortHeaderMsg instead.")))

(cl:ensure-generic-function 'MagicWord-val :lambda-list '(m))
(cl:defmethod MagicWord-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:MagicWord-val is deprecated.  Use sick_lidar_localization-msg:MagicWord instead.")
  (MagicWord m))

(cl:ensure-generic-function 'Length-val :lambda-list '(m))
(cl:defmethod Length-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Length-val is deprecated.  Use sick_lidar_localization-msg:Length instead.")
  (Length m))

(cl:ensure-generic-function 'PayloadType-val :lambda-list '(m))
(cl:defmethod PayloadType-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:PayloadType-val is deprecated.  Use sick_lidar_localization-msg:PayloadType instead.")
  (PayloadType m))

(cl:ensure-generic-function 'PayloadVersion-val :lambda-list '(m))
(cl:defmethod PayloadVersion-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:PayloadVersion-val is deprecated.  Use sick_lidar_localization-msg:PayloadVersion instead.")
  (PayloadVersion m))

(cl:ensure-generic-function 'OrderNumber-val :lambda-list '(m))
(cl:defmethod OrderNumber-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:OrderNumber-val is deprecated.  Use sick_lidar_localization-msg:OrderNumber instead.")
  (OrderNumber m))

(cl:ensure-generic-function 'SerialNumber-val :lambda-list '(m))
(cl:defmethod SerialNumber-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:SerialNumber-val is deprecated.  Use sick_lidar_localization-msg:SerialNumber instead.")
  (SerialNumber m))

(cl:ensure-generic-function 'FW_Version-val :lambda-list '(m))
(cl:defmethod FW_Version-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:FW_Version-val is deprecated.  Use sick_lidar_localization-msg:FW_Version instead.")
  (FW_Version m))

(cl:ensure-generic-function 'TelegramCounter-val :lambda-list '(m))
(cl:defmethod TelegramCounter-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:TelegramCounter-val is deprecated.  Use sick_lidar_localization-msg:TelegramCounter instead.")
  (TelegramCounter m))

(cl:ensure-generic-function 'SystemTime-val :lambda-list '(m))
(cl:defmethod SystemTime-val ((m <SickLocResultPortHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:SystemTime-val is deprecated.  Use sick_lidar_localization-msg:SystemTime instead.")
  (SystemTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocResultPortHeaderMsg>) ostream)
  "Serializes a message object of type '<SickLocResultPortHeaderMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MagicWord)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MagicWord)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'MagicWord)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'MagicWord)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PayloadType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PayloadType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PayloadVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PayloadVersion)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'OrderNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'OrderNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'OrderNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'OrderNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SerialNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SerialNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SerialNumber)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SerialNumber)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'FW_Version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'FW_Version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TelegramCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TelegramCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'TelegramCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'TelegramCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'SystemTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'SystemTime)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocResultPortHeaderMsg>) istream)
  "Deserializes a message object of type '<SickLocResultPortHeaderMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MagicWord)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MagicWord)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'MagicWord)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'MagicWord)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PayloadType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PayloadType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PayloadVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PayloadVersion)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'OrderNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'OrderNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'OrderNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'OrderNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SerialNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SerialNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SerialNumber)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SerialNumber)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'FW_Version) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'FW_Version)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TelegramCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TelegramCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'TelegramCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'TelegramCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'SystemTime)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocResultPortHeaderMsg>)))
  "Returns string type for a message object of type '<SickLocResultPortHeaderMsg>"
  "sick_lidar_localization/SickLocResultPortHeaderMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocResultPortHeaderMsg)))
  "Returns string type for a message object of type 'SickLocResultPortHeaderMsg"
  "sick_lidar_localization/SickLocResultPortHeaderMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocResultPortHeaderMsg>)))
  "Returns md5sum for a message object of type '<SickLocResultPortHeaderMsg>"
  "2faf4992147f30886f5a055c14ae68b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocResultPortHeaderMsg)))
  "Returns md5sum for a message object of type 'SickLocResultPortHeaderMsg"
  "2faf4992147f30886f5a055c14ae68b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocResultPortHeaderMsg>)))
  "Returns full string definition for message of type '<SickLocResultPortHeaderMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortHeaderMsg.~%# SickLocResultPortHeaderMsg publishes the header of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte~%uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte~%uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte~%uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte~%uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte~%uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte~%uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte~%uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte~%uint64  SystemTime       # Not used. Size: NTP = 8 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocResultPortHeaderMsg)))
  "Returns full string definition for message of type 'SickLocResultPortHeaderMsg"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortHeaderMsg.~%# SickLocResultPortHeaderMsg publishes the header of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte~%uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte~%uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte~%uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte~%uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte~%uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte~%uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte~%uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte~%uint64  SystemTime       # Not used. Size: NTP = 8 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocResultPortHeaderMsg>))
  (cl:+ 0
     4
     4
     2
     2
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'FW_Version) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocResultPortHeaderMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocResultPortHeaderMsg
    (cl:cons ':MagicWord (MagicWord msg))
    (cl:cons ':Length (Length msg))
    (cl:cons ':PayloadType (PayloadType msg))
    (cl:cons ':PayloadVersion (PayloadVersion msg))
    (cl:cons ':OrderNumber (OrderNumber msg))
    (cl:cons ':SerialNumber (SerialNumber msg))
    (cl:cons ':FW_Version (FW_Version msg))
    (cl:cons ':TelegramCounter (TelegramCounter msg))
    (cl:cons ':SystemTime (SystemTime msg))
))
