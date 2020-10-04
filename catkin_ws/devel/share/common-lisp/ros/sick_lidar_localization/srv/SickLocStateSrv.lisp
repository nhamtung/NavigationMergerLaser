; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocStateSrv-request.msg.html

(cl:defclass <SickLocStateSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocStateSrv-request (<SickLocStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStateSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocStateSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStateSrv-request>) ostream)
  "Serializes a message object of type '<SickLocStateSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStateSrv-request>) istream)
  "Deserializes a message object of type '<SickLocStateSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStateSrv-request>)))
  "Returns string type for a service object of type '<SickLocStateSrv-request>"
  "sick_lidar_localization/SickLocStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStateSrv-request)))
  "Returns string type for a service object of type 'SickLocStateSrv-request"
  "sick_lidar_localization/SickLocStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStateSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocStateSrv-request>"
  "112e7992c0a1025af8b2c1b11d515e09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStateSrv-request)))
  "Returns md5sum for a message object of type 'SickLocStateSrv-request"
  "112e7992c0a1025af8b2c1b11d515e09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStateSrv-request>)))
  "Returns full string definition for message of type '<SickLocStateSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocState for sick localization.~%#~%# ROS service SickLocState read localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)~%# by sending cola command  (\"sRN LocState\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStateSrv-request)))
  "Returns full string definition for message of type 'SickLocStateSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocState for sick localization.~%#~%# ROS service SickLocState read localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)~%# by sending cola command  (\"sRN LocState\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStateSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStateSrv-request
))
;//! \htmlinclude SickLocStateSrv-response.msg.html

(cl:defclass <SickLocStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocStateSrv-response (<SickLocStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStateSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocStateSrv-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SickLocStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:state-val is deprecated.  Use sick_lidar_localization-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStateSrv-response>) ostream)
  "Serializes a message object of type '<SickLocStateSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStateSrv-response>) istream)
  "Deserializes a message object of type '<SickLocStateSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStateSrv-response>)))
  "Returns string type for a service object of type '<SickLocStateSrv-response>"
  "sick_lidar_localization/SickLocStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStateSrv-response)))
  "Returns string type for a service object of type 'SickLocStateSrv-response"
  "sick_lidar_localization/SickLocStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStateSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocStateSrv-response>"
  "112e7992c0a1025af8b2c1b11d515e09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStateSrv-response)))
  "Returns md5sum for a message object of type 'SickLocStateSrv-response"
  "112e7992c0a1025af8b2c1b11d515e09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStateSrv-response>)))
  "Returns full string definition for message of type '<SickLocStateSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%int32 state  # localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStateSrv-response)))
  "Returns full string definition for message of type 'SickLocStateSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%int32 state  # localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStateSrv-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStateSrv-response
    (cl:cons ':state (state msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocStateSrv)))
  'SickLocStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocStateSrv)))
  'SickLocStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStateSrv)))
  "Returns string type for a service object of type '<SickLocStateSrv>"
  "sick_lidar_localization/SickLocStateSrv")