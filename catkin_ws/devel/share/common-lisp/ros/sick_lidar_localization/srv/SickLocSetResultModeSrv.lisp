; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocSetResultModeSrv-request.msg.html

(cl:defclass <SickLocSetResultModeSrv-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocSetResultModeSrv-request (<SickLocSetResultModeSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultModeSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultModeSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultModeSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocSetResultModeSrv-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SickLocSetResultModeSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:mode-val is deprecated.  Use sick_lidar_localization-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultModeSrv-request>) ostream)
  "Serializes a message object of type '<SickLocSetResultModeSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultModeSrv-request>) istream)
  "Deserializes a message object of type '<SickLocSetResultModeSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultModeSrv-request>)))
  "Returns string type for a service object of type '<SickLocSetResultModeSrv-request>"
  "sick_lidar_localization/SickLocSetResultModeSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultModeSrv-request)))
  "Returns string type for a service object of type 'SickLocSetResultModeSrv-request"
  "sick_lidar_localization/SickLocSetResultModeSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultModeSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocSetResultModeSrv-request>"
  "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultModeSrv-request)))
  "Returns md5sum for a message object of type 'SickLocSetResultModeSrv-request"
  "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultModeSrv-request>)))
  "Returns full string definition for message of type '<SickLocSetResultModeSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultMode for sick localization.~%#~%# ROS service SickLocSetResultMode sets the mode of the result output (stream or poll)~%# by sending cola command (\"sMN LocSetResultMode <mode>\")~%# with parameter~%# <mode>: 0:stream, 1: poll, default: stream~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 mode # 0:stream, 1: poll, default: stream~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultModeSrv-request)))
  "Returns full string definition for message of type 'SickLocSetResultModeSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultMode for sick localization.~%#~%# ROS service SickLocSetResultMode sets the mode of the result output (stream or poll)~%# by sending cola command (\"sMN LocSetResultMode <mode>\")~%# with parameter~%# <mode>: 0:stream, 1: poll, default: stream~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 mode # 0:stream, 1: poll, default: stream~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultModeSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultModeSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultModeSrv-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SickLocSetResultModeSrv-response.msg.html

(cl:defclass <SickLocSetResultModeSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocSetResultModeSrv-response (<SickLocSetResultModeSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultModeSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultModeSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultModeSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocSetResultModeSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocSetResultModeSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultModeSrv-response>) ostream)
  "Serializes a message object of type '<SickLocSetResultModeSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultModeSrv-response>) istream)
  "Deserializes a message object of type '<SickLocSetResultModeSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultModeSrv-response>)))
  "Returns string type for a service object of type '<SickLocSetResultModeSrv-response>"
  "sick_lidar_localization/SickLocSetResultModeSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultModeSrv-response)))
  "Returns string type for a service object of type 'SickLocSetResultModeSrv-response"
  "sick_lidar_localization/SickLocSetResultModeSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultModeSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocSetResultModeSrv-response>"
  "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultModeSrv-response)))
  "Returns md5sum for a message object of type 'SickLocSetResultModeSrv-response"
  "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultModeSrv-response>)))
  "Returns full string definition for message of type '<SickLocSetResultModeSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultModeSrv-response)))
  "Returns full string definition for message of type 'SickLocSetResultModeSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultModeSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultModeSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultModeSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocSetResultModeSrv)))
  'SickLocSetResultModeSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocSetResultModeSrv)))
  'SickLocSetResultModeSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultModeSrv)))
  "Returns string type for a service object of type '<SickLocSetResultModeSrv>"
  "sick_lidar_localization/SickLocSetResultModeSrv")