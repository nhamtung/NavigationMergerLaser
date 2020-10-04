; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocRequestTimestampSrv-request.msg.html

(cl:defclass <SickLocRequestTimestampSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocRequestTimestampSrv-request (<SickLocRequestTimestampSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocRequestTimestampSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocRequestTimestampSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocRequestTimestampSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocRequestTimestampSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocRequestTimestampSrv-request>) ostream)
  "Serializes a message object of type '<SickLocRequestTimestampSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocRequestTimestampSrv-request>) istream)
  "Deserializes a message object of type '<SickLocRequestTimestampSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocRequestTimestampSrv-request>)))
  "Returns string type for a service object of type '<SickLocRequestTimestampSrv-request>"
  "sick_lidar_localization/SickLocRequestTimestampSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocRequestTimestampSrv-request)))
  "Returns string type for a service object of type 'SickLocRequestTimestampSrv-request"
  "sick_lidar_localization/SickLocRequestTimestampSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocRequestTimestampSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocRequestTimestampSrv-request>"
  "ae8b1571bf8be63e0bdad9873d14be2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocRequestTimestampSrv-request)))
  "Returns md5sum for a message object of type 'SickLocRequestTimestampSrv-request"
  "ae8b1571bf8be63e0bdad9873d14be2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocRequestTimestampSrv-request>)))
  "Returns full string definition for message of type '<SickLocRequestTimestampSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocRequestTimestamp for sick localization.~%#~%# ROS service SickLocRequestTimestamp requests a timestamp from the localization controller~%# by sending cola command LocRequestTimestamp (\"sMN LocRequestTimestamp\").~%#~%# The service receives and decodes the current timestamp (uint32 timestamp in milliseconds)~%# and calculates the time offset with the following formular:~%#~%# delta_time_ms := mean_time_vehicle_ms - timestamp_lidar_ms~%# mean_time_vehicle_ms := (send_time_vehicle + receive_time_vehicle) / 2~%#                      := vehicles mean timestamp in milliseconds~%# send_time_vehicle    := vehicles timestamp when sending LocRequestTimestamp~%# receive_time_vehicle := vehicles timestamp when receiving the LocRequestTimestamp response~%# timestamp_lidar_ms   := lidar timestamp in milliseconds from LocRequestTimestamp response~%#~%# See Operation-Instruction-v1.1.0.241R.pdf for details about time synchronization and~%# time offset calculation. See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf~%# for further details about Cola telegram LocRequestTimestamp.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocRequestTimestampSrv-request)))
  "Returns full string definition for message of type 'SickLocRequestTimestampSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocRequestTimestamp for sick localization.~%#~%# ROS service SickLocRequestTimestamp requests a timestamp from the localization controller~%# by sending cola command LocRequestTimestamp (\"sMN LocRequestTimestamp\").~%#~%# The service receives and decodes the current timestamp (uint32 timestamp in milliseconds)~%# and calculates the time offset with the following formular:~%#~%# delta_time_ms := mean_time_vehicle_ms - timestamp_lidar_ms~%# mean_time_vehicle_ms := (send_time_vehicle + receive_time_vehicle) / 2~%#                      := vehicles mean timestamp in milliseconds~%# send_time_vehicle    := vehicles timestamp when sending LocRequestTimestamp~%# receive_time_vehicle := vehicles timestamp when receiving the LocRequestTimestamp response~%# timestamp_lidar_ms   := lidar timestamp in milliseconds from LocRequestTimestamp response~%#~%# See Operation-Instruction-v1.1.0.241R.pdf for details about time synchronization and~%# time offset calculation. See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf~%# for further details about Cola telegram LocRequestTimestamp.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocRequestTimestampSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocRequestTimestampSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocRequestTimestampSrv-request
))
;//! \htmlinclude SickLocRequestTimestampSrv-response.msg.html

(cl:defclass <SickLocRequestTimestampSrv-response> (roslisp-msg-protocol:ros-message)
  ((timestamp_lidar_ms
    :reader timestamp_lidar_ms
    :initarg :timestamp_lidar_ms
    :type cl:integer
    :initform 0)
   (mean_time_vehicle_ms
    :reader mean_time_vehicle_ms
    :initarg :mean_time_vehicle_ms
    :type cl:integer
    :initform 0)
   (delta_time_ms
    :reader delta_time_ms
    :initarg :delta_time_ms
    :type cl:integer
    :initform 0)
   (send_time_vehicle_sec
    :reader send_time_vehicle_sec
    :initarg :send_time_vehicle_sec
    :type cl:integer
    :initform 0)
   (send_time_vehicle_nsec
    :reader send_time_vehicle_nsec
    :initarg :send_time_vehicle_nsec
    :type cl:integer
    :initform 0)
   (receive_time_vehicle_sec
    :reader receive_time_vehicle_sec
    :initarg :receive_time_vehicle_sec
    :type cl:integer
    :initform 0)
   (receive_time_vehicle_nsec
    :reader receive_time_vehicle_nsec
    :initarg :receive_time_vehicle_nsec
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocRequestTimestampSrv-response (<SickLocRequestTimestampSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocRequestTimestampSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocRequestTimestampSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocRequestTimestampSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocRequestTimestampSrv-response instead.")))

(cl:ensure-generic-function 'timestamp_lidar_ms-val :lambda-list '(m))
(cl:defmethod timestamp_lidar_ms-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:timestamp_lidar_ms-val is deprecated.  Use sick_lidar_localization-srv:timestamp_lidar_ms instead.")
  (timestamp_lidar_ms m))

(cl:ensure-generic-function 'mean_time_vehicle_ms-val :lambda-list '(m))
(cl:defmethod mean_time_vehicle_ms-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:mean_time_vehicle_ms-val is deprecated.  Use sick_lidar_localization-srv:mean_time_vehicle_ms instead.")
  (mean_time_vehicle_ms m))

(cl:ensure-generic-function 'delta_time_ms-val :lambda-list '(m))
(cl:defmethod delta_time_ms-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:delta_time_ms-val is deprecated.  Use sick_lidar_localization-srv:delta_time_ms instead.")
  (delta_time_ms m))

(cl:ensure-generic-function 'send_time_vehicle_sec-val :lambda-list '(m))
(cl:defmethod send_time_vehicle_sec-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:send_time_vehicle_sec-val is deprecated.  Use sick_lidar_localization-srv:send_time_vehicle_sec instead.")
  (send_time_vehicle_sec m))

(cl:ensure-generic-function 'send_time_vehicle_nsec-val :lambda-list '(m))
(cl:defmethod send_time_vehicle_nsec-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:send_time_vehicle_nsec-val is deprecated.  Use sick_lidar_localization-srv:send_time_vehicle_nsec instead.")
  (send_time_vehicle_nsec m))

(cl:ensure-generic-function 'receive_time_vehicle_sec-val :lambda-list '(m))
(cl:defmethod receive_time_vehicle_sec-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:receive_time_vehicle_sec-val is deprecated.  Use sick_lidar_localization-srv:receive_time_vehicle_sec instead.")
  (receive_time_vehicle_sec m))

(cl:ensure-generic-function 'receive_time_vehicle_nsec-val :lambda-list '(m))
(cl:defmethod receive_time_vehicle_nsec-val ((m <SickLocRequestTimestampSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:receive_time_vehicle_nsec-val is deprecated.  Use sick_lidar_localization-srv:receive_time_vehicle_nsec instead.")
  (receive_time_vehicle_nsec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocRequestTimestampSrv-response>) ostream)
  "Serializes a message object of type '<SickLocRequestTimestampSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_lidar_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'mean_time_vehicle_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'delta_time_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_time_vehicle_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_time_vehicle_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_time_vehicle_nsec)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocRequestTimestampSrv-response>) istream)
  "Deserializes a message object of type '<SickLocRequestTimestampSrv-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_lidar_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'mean_time_vehicle_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'delta_time_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_time_vehicle_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_time_vehicle_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_time_vehicle_nsec)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocRequestTimestampSrv-response>)))
  "Returns string type for a service object of type '<SickLocRequestTimestampSrv-response>"
  "sick_lidar_localization/SickLocRequestTimestampSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocRequestTimestampSrv-response)))
  "Returns string type for a service object of type 'SickLocRequestTimestampSrv-response"
  "sick_lidar_localization/SickLocRequestTimestampSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocRequestTimestampSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocRequestTimestampSrv-response>"
  "ae8b1571bf8be63e0bdad9873d14be2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocRequestTimestampSrv-response)))
  "Returns md5sum for a message object of type 'SickLocRequestTimestampSrv-response"
  "ae8b1571bf8be63e0bdad9873d14be2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocRequestTimestampSrv-response>)))
  "Returns full string definition for message of type '<SickLocRequestTimestampSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%uint32 timestamp_lidar_ms        # Lidar timestamp in milliseconds from LocRequestTimestamp response~%uint64 mean_time_vehicle_ms      # Vehicle mean timestamp in milliseconds: (send_time_vehicle + receive_time_vehicle) / 2~%uint64 delta_time_ms             # Time offset: mean_time_vehicle_ms - timestamp_lidar_ms~%~%uint32 send_time_vehicle_sec     # Vehicle timestamp when sending LocRequestTimestamp (seconds part of ros timestamp immediately before tcp send)~%uint32 send_time_vehicle_nsec    # Vehicle timestamp when sending LocRequestTimestamp (nano seconds part of ros timestamp immediately before tcp send)~%uint32 receive_time_vehicle_sec  # Vehicle timestamp when receiving the LocRequestTimestamp response (seconds part of ros timestamp immediately after first response byte received)~%uint32 receive_time_vehicle_nsec # Vehicle timestamp when receiving the LocRequestTimestamp response (nano seconds part of ros timestamp immediately after first response byte received)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocRequestTimestampSrv-response)))
  "Returns full string definition for message of type 'SickLocRequestTimestampSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%uint32 timestamp_lidar_ms        # Lidar timestamp in milliseconds from LocRequestTimestamp response~%uint64 mean_time_vehicle_ms      # Vehicle mean timestamp in milliseconds: (send_time_vehicle + receive_time_vehicle) / 2~%uint64 delta_time_ms             # Time offset: mean_time_vehicle_ms - timestamp_lidar_ms~%~%uint32 send_time_vehicle_sec     # Vehicle timestamp when sending LocRequestTimestamp (seconds part of ros timestamp immediately before tcp send)~%uint32 send_time_vehicle_nsec    # Vehicle timestamp when sending LocRequestTimestamp (nano seconds part of ros timestamp immediately before tcp send)~%uint32 receive_time_vehicle_sec  # Vehicle timestamp when receiving the LocRequestTimestamp response (seconds part of ros timestamp immediately after first response byte received)~%uint32 receive_time_vehicle_nsec # Vehicle timestamp when receiving the LocRequestTimestamp response (nano seconds part of ros timestamp immediately after first response byte received)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocRequestTimestampSrv-response>))
  (cl:+ 0
     4
     8
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocRequestTimestampSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocRequestTimestampSrv-response
    (cl:cons ':timestamp_lidar_ms (timestamp_lidar_ms msg))
    (cl:cons ':mean_time_vehicle_ms (mean_time_vehicle_ms msg))
    (cl:cons ':delta_time_ms (delta_time_ms msg))
    (cl:cons ':send_time_vehicle_sec (send_time_vehicle_sec msg))
    (cl:cons ':send_time_vehicle_nsec (send_time_vehicle_nsec msg))
    (cl:cons ':receive_time_vehicle_sec (receive_time_vehicle_sec msg))
    (cl:cons ':receive_time_vehicle_nsec (receive_time_vehicle_nsec msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocRequestTimestampSrv)))
  'SickLocRequestTimestampSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocRequestTimestampSrv)))
  'SickLocRequestTimestampSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocRequestTimestampSrv)))
  "Returns string type for a service object of type '<SickLocRequestTimestampSrv>"
  "sick_lidar_localization/SickLocRequestTimestampSrv")