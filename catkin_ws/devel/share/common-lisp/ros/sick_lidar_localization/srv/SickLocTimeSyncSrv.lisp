; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocTimeSyncSrv-request.msg.html

(cl:defclass <SickLocTimeSyncSrv-request> (roslisp-msg-protocol:ros-message)
  ((timestamp_lidar_ms
    :reader timestamp_lidar_ms
    :initarg :timestamp_lidar_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocTimeSyncSrv-request (<SickLocTimeSyncSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocTimeSyncSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocTimeSyncSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocTimeSyncSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocTimeSyncSrv-request instead.")))

(cl:ensure-generic-function 'timestamp_lidar_ms-val :lambda-list '(m))
(cl:defmethod timestamp_lidar_ms-val ((m <SickLocTimeSyncSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:timestamp_lidar_ms-val is deprecated.  Use sick_lidar_localization-srv:timestamp_lidar_ms instead.")
  (timestamp_lidar_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocTimeSyncSrv-request>) ostream)
  "Serializes a message object of type '<SickLocTimeSyncSrv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocTimeSyncSrv-request>) istream)
  "Deserializes a message object of type '<SickLocTimeSyncSrv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocTimeSyncSrv-request>)))
  "Returns string type for a service object of type '<SickLocTimeSyncSrv-request>"
  "sick_lidar_localization/SickLocTimeSyncSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocTimeSyncSrv-request)))
  "Returns string type for a service object of type 'SickLocTimeSyncSrv-request"
  "sick_lidar_localization/SickLocTimeSyncSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocTimeSyncSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocTimeSyncSrv-request>"
  "216ce2f222e12099ae0a51b3bd3cad26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocTimeSyncSrv-request)))
  "Returns md5sum for a message object of type 'SickLocTimeSyncSrv-request"
  "216ce2f222e12099ae0a51b3bd3cad26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocTimeSyncSrv-request>)))
  "Returns full string definition for message of type '<SickLocTimeSyncSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocTimeSync for sick localization.~%#~%# ROS service SickLocTimeSync returns the system time of a vehicle pose from lidar ticks in ms.~%# SickLocTimeSync uses a software pll to calculate the system time from ticks. Therefore at least~%# 7 LocRequestTimestamp measurements are required before time sync becomes valid (default fifo~%# size of the software pll is 7 measurements). Depending on time_sync_rate configured in the~%# launch-file, this initial phase can take several seconds (up to 70 seconds).~%~%#~%# Request (input): Timestamp in ticks~%#~%~%uint32 timestamp_lidar_ms  # Lidar timestamp in milliseconds from LocRequestTimestamp response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocTimeSyncSrv-request)))
  "Returns full string definition for message of type 'SickLocTimeSyncSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocTimeSync for sick localization.~%#~%# ROS service SickLocTimeSync returns the system time of a vehicle pose from lidar ticks in ms.~%# SickLocTimeSync uses a software pll to calculate the system time from ticks. Therefore at least~%# 7 LocRequestTimestamp measurements are required before time sync becomes valid (default fifo~%# size of the software pll is 7 measurements). Depending on time_sync_rate configured in the~%# launch-file, this initial phase can take several seconds (up to 70 seconds).~%~%#~%# Request (input): Timestamp in ticks~%#~%~%uint32 timestamp_lidar_ms  # Lidar timestamp in milliseconds from LocRequestTimestamp response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocTimeSyncSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocTimeSyncSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocTimeSyncSrv-request
    (cl:cons ':timestamp_lidar_ms (timestamp_lidar_ms msg))
))
;//! \htmlinclude SickLocTimeSyncSrv-response.msg.html

(cl:defclass <SickLocTimeSyncSrv-response> (roslisp-msg-protocol:ros-message)
  ((vehicle_time_valid
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

(cl:defclass SickLocTimeSyncSrv-response (<SickLocTimeSyncSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocTimeSyncSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocTimeSyncSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocTimeSyncSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocTimeSyncSrv-response instead.")))

(cl:ensure-generic-function 'vehicle_time_valid-val :lambda-list '(m))
(cl:defmethod vehicle_time_valid-val ((m <SickLocTimeSyncSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:vehicle_time_valid-val is deprecated.  Use sick_lidar_localization-srv:vehicle_time_valid instead.")
  (vehicle_time_valid m))

(cl:ensure-generic-function 'vehicle_time_sec-val :lambda-list '(m))
(cl:defmethod vehicle_time_sec-val ((m <SickLocTimeSyncSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:vehicle_time_sec-val is deprecated.  Use sick_lidar_localization-srv:vehicle_time_sec instead.")
  (vehicle_time_sec m))

(cl:ensure-generic-function 'vehicle_time_nsec-val :lambda-list '(m))
(cl:defmethod vehicle_time_nsec-val ((m <SickLocTimeSyncSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:vehicle_time_nsec-val is deprecated.  Use sick_lidar_localization-srv:vehicle_time_nsec instead.")
  (vehicle_time_nsec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocTimeSyncSrv-response>) ostream)
  "Serializes a message object of type '<SickLocTimeSyncSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocTimeSyncSrv-response>) istream)
  "Deserializes a message object of type '<SickLocTimeSyncSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocTimeSyncSrv-response>)))
  "Returns string type for a service object of type '<SickLocTimeSyncSrv-response>"
  "sick_lidar_localization/SickLocTimeSyncSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocTimeSyncSrv-response)))
  "Returns string type for a service object of type 'SickLocTimeSyncSrv-response"
  "sick_lidar_localization/SickLocTimeSyncSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocTimeSyncSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocTimeSyncSrv-response>"
  "216ce2f222e12099ae0a51b3bd3cad26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocTimeSyncSrv-response)))
  "Returns md5sum for a message object of type 'SickLocTimeSyncSrv-response"
  "216ce2f222e12099ae0a51b3bd3cad26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocTimeSyncSrv-response>)))
  "Returns full string definition for message of type '<SickLocTimeSyncSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output): System time calculated by software pll~%#~%~%bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase~%uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)~%uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocTimeSyncSrv-response)))
  "Returns full string definition for message of type 'SickLocTimeSyncSrv-response"
  (cl:format cl:nil "~%#~%# Response (output): System time calculated by software pll~%#~%~%bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase~%uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)~%uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocTimeSyncSrv-response>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocTimeSyncSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocTimeSyncSrv-response
    (cl:cons ':vehicle_time_valid (vehicle_time_valid msg))
    (cl:cons ':vehicle_time_sec (vehicle_time_sec msg))
    (cl:cons ':vehicle_time_nsec (vehicle_time_nsec msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocTimeSyncSrv)))
  'SickLocTimeSyncSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocTimeSyncSrv)))
  'SickLocTimeSyncSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocTimeSyncSrv)))
  "Returns string type for a service object of type '<SickLocTimeSyncSrv>"
  "sick_lidar_localization/SickLocTimeSyncSrv")