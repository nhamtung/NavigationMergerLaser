; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocSetResultEndiannessSrv-request.msg.html

(cl:defclass <SickLocSetResultEndiannessSrv-request> (roslisp-msg-protocol:ros-message)
  ((endianness
    :reader endianness
    :initarg :endianness
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocSetResultEndiannessSrv-request (<SickLocSetResultEndiannessSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultEndiannessSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultEndiannessSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultEndiannessSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocSetResultEndiannessSrv-request instead.")))

(cl:ensure-generic-function 'endianness-val :lambda-list '(m))
(cl:defmethod endianness-val ((m <SickLocSetResultEndiannessSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:endianness-val is deprecated.  Use sick_lidar_localization-srv:endianness instead.")
  (endianness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultEndiannessSrv-request>) ostream)
  "Serializes a message object of type '<SickLocSetResultEndiannessSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'endianness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultEndiannessSrv-request>) istream)
  "Deserializes a message object of type '<SickLocSetResultEndiannessSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endianness) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultEndiannessSrv-request>)))
  "Returns string type for a service object of type '<SickLocSetResultEndiannessSrv-request>"
  "sick_lidar_localization/SickLocSetResultEndiannessSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultEndiannessSrv-request)))
  "Returns string type for a service object of type 'SickLocSetResultEndiannessSrv-request"
  "sick_lidar_localization/SickLocSetResultEndiannessSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultEndiannessSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocSetResultEndiannessSrv-request>"
  "ad546145ccc5332dee356f4fbbf0ae49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultEndiannessSrv-request)))
  "Returns md5sum for a message object of type 'SickLocSetResultEndiannessSrv-request"
  "ad546145ccc5332dee356f4fbbf0ae49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultEndiannessSrv-request>)))
  "Returns full string definition for message of type '<SickLocSetResultEndiannessSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultEndianness for sick localization.~%#~%# ROS service SickLocSetResultEndianness sets the endianness of the result output~%# by sending cola command (\"sMN LocSetResultEndianness <endianness>\")~%# with parameter~%# <endianness>:  0: big endian, 1: little endian, default: big endian~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 endianness # 0: big endian, 1: little endian, default: big endian~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultEndiannessSrv-request)))
  "Returns full string definition for message of type 'SickLocSetResultEndiannessSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultEndianness for sick localization.~%#~%# ROS service SickLocSetResultEndianness sets the endianness of the result output~%# by sending cola command (\"sMN LocSetResultEndianness <endianness>\")~%# with parameter~%# <endianness>:  0: big endian, 1: little endian, default: big endian~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 endianness # 0: big endian, 1: little endian, default: big endian~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultEndiannessSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultEndiannessSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultEndiannessSrv-request
    (cl:cons ':endianness (endianness msg))
))
;//! \htmlinclude SickLocSetResultEndiannessSrv-response.msg.html

(cl:defclass <SickLocSetResultEndiannessSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocSetResultEndiannessSrv-response (<SickLocSetResultEndiannessSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultEndiannessSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultEndiannessSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultEndiannessSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocSetResultEndiannessSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocSetResultEndiannessSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultEndiannessSrv-response>) ostream)
  "Serializes a message object of type '<SickLocSetResultEndiannessSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultEndiannessSrv-response>) istream)
  "Deserializes a message object of type '<SickLocSetResultEndiannessSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultEndiannessSrv-response>)))
  "Returns string type for a service object of type '<SickLocSetResultEndiannessSrv-response>"
  "sick_lidar_localization/SickLocSetResultEndiannessSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultEndiannessSrv-response)))
  "Returns string type for a service object of type 'SickLocSetResultEndiannessSrv-response"
  "sick_lidar_localization/SickLocSetResultEndiannessSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultEndiannessSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocSetResultEndiannessSrv-response>"
  "ad546145ccc5332dee356f4fbbf0ae49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultEndiannessSrv-response)))
  "Returns md5sum for a message object of type 'SickLocSetResultEndiannessSrv-response"
  "ad546145ccc5332dee356f4fbbf0ae49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultEndiannessSrv-response>)))
  "Returns full string definition for message of type '<SickLocSetResultEndiannessSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultEndiannessSrv-response)))
  "Returns full string definition for message of type 'SickLocSetResultEndiannessSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultEndiannessSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultEndiannessSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultEndiannessSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocSetResultEndiannessSrv)))
  'SickLocSetResultEndiannessSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocSetResultEndiannessSrv)))
  'SickLocSetResultEndiannessSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultEndiannessSrv)))
  "Returns string type for a service object of type '<SickLocSetResultEndiannessSrv>"
  "sick_lidar_localization/SickLocSetResultEndiannessSrv")