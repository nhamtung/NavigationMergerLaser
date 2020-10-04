; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocColaTelegramSrv-request.msg.html

(cl:defclass <SickLocColaTelegramSrv-request> (roslisp-msg-protocol:ros-message)
  ((cola_ascii_request
    :reader cola_ascii_request
    :initarg :cola_ascii_request
    :type cl:string
    :initform "")
   (wait_response_timeout
    :reader wait_response_timeout
    :initarg :wait_response_timeout
    :type cl:float
    :initform 0.0))
)

(cl:defclass SickLocColaTelegramSrv-request (<SickLocColaTelegramSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocColaTelegramSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocColaTelegramSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocColaTelegramSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocColaTelegramSrv-request instead.")))

(cl:ensure-generic-function 'cola_ascii_request-val :lambda-list '(m))
(cl:defmethod cola_ascii_request-val ((m <SickLocColaTelegramSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:cola_ascii_request-val is deprecated.  Use sick_lidar_localization-srv:cola_ascii_request instead.")
  (cola_ascii_request m))

(cl:ensure-generic-function 'wait_response_timeout-val :lambda-list '(m))
(cl:defmethod wait_response_timeout-val ((m <SickLocColaTelegramSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:wait_response_timeout-val is deprecated.  Use sick_lidar_localization-srv:wait_response_timeout instead.")
  (wait_response_timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocColaTelegramSrv-request>) ostream)
  "Serializes a message object of type '<SickLocColaTelegramSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cola_ascii_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cola_ascii_request))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wait_response_timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocColaTelegramSrv-request>) istream)
  "Deserializes a message object of type '<SickLocColaTelegramSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cola_ascii_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cola_ascii_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wait_response_timeout) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocColaTelegramSrv-request>)))
  "Returns string type for a service object of type '<SickLocColaTelegramSrv-request>"
  "sick_lidar_localization/SickLocColaTelegramSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocColaTelegramSrv-request)))
  "Returns string type for a service object of type 'SickLocColaTelegramSrv-request"
  "sick_lidar_localization/SickLocColaTelegramSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocColaTelegramSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocColaTelegramSrv-request>"
  "60dfc3041906873e51cdec40ce270a34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocColaTelegramSrv-request)))
  "Returns md5sum for a message object of type 'SickLocColaTelegramSrv-request"
  "60dfc3041906873e51cdec40ce270a34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocColaTelegramSrv-request>)))
  "Returns full string definition for message of type '<SickLocColaTelegramSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocColaTelegram for sick localization.~%# ROS service SickLocColaTelegram encodes and sends a Cola telegram to the localization controller,~%# receives and encodes the answer from the controller.~%#~%# See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf~%# for further details about Cola telgrams.~%~%#~%# Request (input)~%#~%~%string  cola_ascii_request       # Cola-ASCII telegram to send to the localization controller, f.e. \"sRN SetAccessMode 3 F4724744\".~%float32 wait_response_timeout    # Timeout for the controller response in secondes. Use 0.0 for Cola requests without controller response.~%# bool send_binary               # Not used (true: send binary telegram, false/default: send ASCII telegram)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocColaTelegramSrv-request)))
  "Returns full string definition for message of type 'SickLocColaTelegramSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocColaTelegram for sick localization.~%# ROS service SickLocColaTelegram encodes and sends a Cola telegram to the localization controller,~%# receives and encodes the answer from the controller.~%#~%# See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf~%# for further details about Cola telgrams.~%~%#~%# Request (input)~%#~%~%string  cola_ascii_request       # Cola-ASCII telegram to send to the localization controller, f.e. \"sRN SetAccessMode 3 F4724744\".~%float32 wait_response_timeout    # Timeout for the controller response in secondes. Use 0.0 for Cola requests without controller response.~%# bool send_binary               # Not used (true: send binary telegram, false/default: send ASCII telegram)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocColaTelegramSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cola_ascii_request))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocColaTelegramSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocColaTelegramSrv-request
    (cl:cons ':cola_ascii_request (cola_ascii_request msg))
    (cl:cons ':wait_response_timeout (wait_response_timeout msg))
))
;//! \htmlinclude SickLocColaTelegramSrv-response.msg.html

(cl:defclass <SickLocColaTelegramSrv-response> (roslisp-msg-protocol:ros-message)
  ((cola_ascii_response
    :reader cola_ascii_response
    :initarg :cola_ascii_response
    :type cl:string
    :initform "")
   (send_timestamp_sec
    :reader send_timestamp_sec
    :initarg :send_timestamp_sec
    :type cl:integer
    :initform 0)
   (send_timestamp_nsec
    :reader send_timestamp_nsec
    :initarg :send_timestamp_nsec
    :type cl:integer
    :initform 0)
   (receive_timestamp_sec
    :reader receive_timestamp_sec
    :initarg :receive_timestamp_sec
    :type cl:integer
    :initform 0)
   (receive_timestamp_nsec
    :reader receive_timestamp_nsec
    :initarg :receive_timestamp_nsec
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocColaTelegramSrv-response (<SickLocColaTelegramSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocColaTelegramSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocColaTelegramSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocColaTelegramSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocColaTelegramSrv-response instead.")))

(cl:ensure-generic-function 'cola_ascii_response-val :lambda-list '(m))
(cl:defmethod cola_ascii_response-val ((m <SickLocColaTelegramSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:cola_ascii_response-val is deprecated.  Use sick_lidar_localization-srv:cola_ascii_response instead.")
  (cola_ascii_response m))

(cl:ensure-generic-function 'send_timestamp_sec-val :lambda-list '(m))
(cl:defmethod send_timestamp_sec-val ((m <SickLocColaTelegramSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:send_timestamp_sec-val is deprecated.  Use sick_lidar_localization-srv:send_timestamp_sec instead.")
  (send_timestamp_sec m))

(cl:ensure-generic-function 'send_timestamp_nsec-val :lambda-list '(m))
(cl:defmethod send_timestamp_nsec-val ((m <SickLocColaTelegramSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:send_timestamp_nsec-val is deprecated.  Use sick_lidar_localization-srv:send_timestamp_nsec instead.")
  (send_timestamp_nsec m))

(cl:ensure-generic-function 'receive_timestamp_sec-val :lambda-list '(m))
(cl:defmethod receive_timestamp_sec-val ((m <SickLocColaTelegramSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:receive_timestamp_sec-val is deprecated.  Use sick_lidar_localization-srv:receive_timestamp_sec instead.")
  (receive_timestamp_sec m))

(cl:ensure-generic-function 'receive_timestamp_nsec-val :lambda-list '(m))
(cl:defmethod receive_timestamp_nsec-val ((m <SickLocColaTelegramSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:receive_timestamp_nsec-val is deprecated.  Use sick_lidar_localization-srv:receive_timestamp_nsec instead.")
  (receive_timestamp_nsec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocColaTelegramSrv-response>) ostream)
  "Serializes a message object of type '<SickLocColaTelegramSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cola_ascii_response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cola_ascii_response))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_timestamp_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_timestamp_nsec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_timestamp_nsec)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocColaTelegramSrv-response>) istream)
  "Deserializes a message object of type '<SickLocColaTelegramSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cola_ascii_response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cola_ascii_response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'send_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'send_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'send_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_timestamp_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receive_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receive_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receive_timestamp_nsec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receive_timestamp_nsec)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocColaTelegramSrv-response>)))
  "Returns string type for a service object of type '<SickLocColaTelegramSrv-response>"
  "sick_lidar_localization/SickLocColaTelegramSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocColaTelegramSrv-response)))
  "Returns string type for a service object of type 'SickLocColaTelegramSrv-response"
  "sick_lidar_localization/SickLocColaTelegramSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocColaTelegramSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocColaTelegramSrv-response>"
  "60dfc3041906873e51cdec40ce270a34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocColaTelegramSrv-response)))
  "Returns md5sum for a message object of type 'SickLocColaTelegramSrv-response"
  "60dfc3041906873e51cdec40ce270a34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocColaTelegramSrv-response>)))
  "Returns full string definition for message of type '<SickLocColaTelegramSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%string cola_ascii_response       # Response from the localization controller (empty in case of connection failures, communication errors or timeouts)~%uint32 send_timestamp_sec        # Send timestamp (seconds part of ros timestamp immediately before tcp send)~%uint32 send_timestamp_nsec       # Send timestamp (nano seconds part of ros timestamp immediately before tcp send)~%uint32 receive_timestamp_sec     # Receive timestamp (seconds part of ros timestamp immediately after first response byte received)~%uint32 receive_timestamp_nsec    # Receive timestamp (nano seconds part of ros timestamp immediately after first response byte received)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocColaTelegramSrv-response)))
  "Returns full string definition for message of type 'SickLocColaTelegramSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%string cola_ascii_response       # Response from the localization controller (empty in case of connection failures, communication errors or timeouts)~%uint32 send_timestamp_sec        # Send timestamp (seconds part of ros timestamp immediately before tcp send)~%uint32 send_timestamp_nsec       # Send timestamp (nano seconds part of ros timestamp immediately before tcp send)~%uint32 receive_timestamp_sec     # Receive timestamp (seconds part of ros timestamp immediately after first response byte received)~%uint32 receive_timestamp_nsec    # Receive timestamp (nano seconds part of ros timestamp immediately after first response byte received)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocColaTelegramSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cola_ascii_response))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocColaTelegramSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocColaTelegramSrv-response
    (cl:cons ':cola_ascii_response (cola_ascii_response msg))
    (cl:cons ':send_timestamp_sec (send_timestamp_sec msg))
    (cl:cons ':send_timestamp_nsec (send_timestamp_nsec msg))
    (cl:cons ':receive_timestamp_sec (receive_timestamp_sec msg))
    (cl:cons ':receive_timestamp_nsec (receive_timestamp_nsec msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocColaTelegramSrv)))
  'SickLocColaTelegramSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocColaTelegramSrv)))
  'SickLocColaTelegramSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocColaTelegramSrv)))
  "Returns string type for a service object of type '<SickLocColaTelegramSrv>"
  "sick_lidar_localization/SickLocColaTelegramSrv")