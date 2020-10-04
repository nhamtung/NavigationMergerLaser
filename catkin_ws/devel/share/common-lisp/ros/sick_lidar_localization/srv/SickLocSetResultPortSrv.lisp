; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocSetResultPortSrv-request.msg.html

(cl:defclass <SickLocSetResultPortSrv-request> (roslisp-msg-protocol:ros-message)
  ((port
    :reader port
    :initarg :port
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocSetResultPortSrv-request (<SickLocSetResultPortSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultPortSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultPortSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultPortSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocSetResultPortSrv-request instead.")))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <SickLocSetResultPortSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:port-val is deprecated.  Use sick_lidar_localization-srv:port instead.")
  (port m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultPortSrv-request>) ostream)
  "Serializes a message object of type '<SickLocSetResultPortSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultPortSrv-request>) istream)
  "Deserializes a message object of type '<SickLocSetResultPortSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'port) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultPortSrv-request>)))
  "Returns string type for a service object of type '<SickLocSetResultPortSrv-request>"
  "sick_lidar_localization/SickLocSetResultPortSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPortSrv-request)))
  "Returns string type for a service object of type 'SickLocSetResultPortSrv-request"
  "sick_lidar_localization/SickLocSetResultPortSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultPortSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocSetResultPortSrv-request>"
  "22d338505934787b6445bcb45da196e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultPortSrv-request)))
  "Returns md5sum for a message object of type 'SickLocSetResultPortSrv-request"
  "22d338505934787b6445bcb45da196e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultPortSrv-request>)))
  "Returns full string definition for message of type '<SickLocSetResultPortSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultPort for sick localization.~%#~%# ROS service SickLocSetResultPort sets the TCP-port for result output telegrams~%# by sending cola command (\"sMN LocSetResultPort <port>\")~%# with parameter~%# <port>: TCP-port for result output telegrams (default: 2201)~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 port # TCP-port for result output telegrams (default: 2201)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultPortSrv-request)))
  "Returns full string definition for message of type 'SickLocSetResultPortSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultPort for sick localization.~%#~%# ROS service SickLocSetResultPort sets the TCP-port for result output telegrams~%# by sending cola command (\"sMN LocSetResultPort <port>\")~%# with parameter~%# <port>: TCP-port for result output telegrams (default: 2201)~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 port # TCP-port for result output telegrams (default: 2201)~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultPortSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultPortSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultPortSrv-request
    (cl:cons ':port (port msg))
))
;//! \htmlinclude SickLocSetResultPortSrv-response.msg.html

(cl:defclass <SickLocSetResultPortSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocSetResultPortSrv-response (<SickLocSetResultPortSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultPortSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultPortSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultPortSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocSetResultPortSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocSetResultPortSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultPortSrv-response>) ostream)
  "Serializes a message object of type '<SickLocSetResultPortSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultPortSrv-response>) istream)
  "Deserializes a message object of type '<SickLocSetResultPortSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultPortSrv-response>)))
  "Returns string type for a service object of type '<SickLocSetResultPortSrv-response>"
  "sick_lidar_localization/SickLocSetResultPortSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPortSrv-response)))
  "Returns string type for a service object of type 'SickLocSetResultPortSrv-response"
  "sick_lidar_localization/SickLocSetResultPortSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultPortSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocSetResultPortSrv-response>"
  "22d338505934787b6445bcb45da196e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultPortSrv-response)))
  "Returns md5sum for a message object of type 'SickLocSetResultPortSrv-response"
  "22d338505934787b6445bcb45da196e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultPortSrv-response>)))
  "Returns full string definition for message of type '<SickLocSetResultPortSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultPortSrv-response)))
  "Returns full string definition for message of type 'SickLocSetResultPortSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultPortSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultPortSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultPortSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocSetResultPortSrv)))
  'SickLocSetResultPortSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocSetResultPortSrv)))
  'SickLocSetResultPortSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPortSrv)))
  "Returns string type for a service object of type '<SickLocSetResultPortSrv>"
  "sick_lidar_localization/SickLocSetResultPortSrv")