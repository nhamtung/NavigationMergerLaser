; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocSetPoseSrv-request.msg.html

(cl:defclass <SickLocSetPoseSrv-request> (roslisp-msg-protocol:ros-message)
  ((posex
    :reader posex
    :initarg :posex
    :type cl:integer
    :initform 0)
   (posey
    :reader posey
    :initarg :posey
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:integer
    :initform 0)
   (uncertainty
    :reader uncertainty
    :initarg :uncertainty
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocSetPoseSrv-request (<SickLocSetPoseSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetPoseSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetPoseSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetPoseSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocSetPoseSrv-request instead.")))

(cl:ensure-generic-function 'posex-val :lambda-list '(m))
(cl:defmethod posex-val ((m <SickLocSetPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:posex-val is deprecated.  Use sick_lidar_localization-srv:posex instead.")
  (posex m))

(cl:ensure-generic-function 'posey-val :lambda-list '(m))
(cl:defmethod posey-val ((m <SickLocSetPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:posey-val is deprecated.  Use sick_lidar_localization-srv:posey instead.")
  (posey m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SickLocSetPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:yaw-val is deprecated.  Use sick_lidar_localization-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'uncertainty-val :lambda-list '(m))
(cl:defmethod uncertainty-val ((m <SickLocSetPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:uncertainty-val is deprecated.  Use sick_lidar_localization-srv:uncertainty instead.")
  (uncertainty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetPoseSrv-request>) ostream)
  "Serializes a message object of type '<SickLocSetPoseSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'posex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'posey)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'uncertainty)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetPoseSrv-request>) istream)
  "Deserializes a message object of type '<SickLocSetPoseSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posex) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'posey) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uncertainty) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetPoseSrv-request>)))
  "Returns string type for a service object of type '<SickLocSetPoseSrv-request>"
  "sick_lidar_localization/SickLocSetPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetPoseSrv-request)))
  "Returns string type for a service object of type 'SickLocSetPoseSrv-request"
  "sick_lidar_localization/SickLocSetPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetPoseSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocSetPoseSrv-request>"
  "11bcade26cc02b7bbcb448a2abedd38e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetPoseSrv-request)))
  "Returns md5sum for a message object of type 'SickLocSetPoseSrv-request"
  "11bcade26cc02b7bbcb448a2abedd38e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetPoseSrv-request>)))
  "Returns full string definition for message of type '<SickLocSetPoseSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocSetPose for sick localization.~%#~%# ROS service SickLocSetPose initializes the vehicle pose~%# by sending cola command (\"sMN LocSetPose <posex> <posey> <yaw> <uncertainty>\")~%# with parameter~%# <posex>: x coordinate in mm~%# <posey>: y coordinate in mm~%# <yaw>: yaw angle in millidegree, -180000 to +180000~%# <uncertainty>: translation uncertainty in mm~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 posex       # x coordinate in mm~%int32 posey       # y coordinate in mm~%int32 yaw         # yaw angle in millidegree, -180000 to +180000~%int32 uncertainty # translation uncertainty in mm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetPoseSrv-request)))
  "Returns full string definition for message of type 'SickLocSetPoseSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocSetPose for sick localization.~%#~%# ROS service SickLocSetPose initializes the vehicle pose~%# by sending cola command (\"sMN LocSetPose <posex> <posey> <yaw> <uncertainty>\")~%# with parameter~%# <posex>: x coordinate in mm~%# <posey>: y coordinate in mm~%# <yaw>: yaw angle in millidegree, -180000 to +180000~%# <uncertainty>: translation uncertainty in mm~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 posex       # x coordinate in mm~%int32 posey       # y coordinate in mm~%int32 yaw         # yaw angle in millidegree, -180000 to +180000~%int32 uncertainty # translation uncertainty in mm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetPoseSrv-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetPoseSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetPoseSrv-request
    (cl:cons ':posex (posex msg))
    (cl:cons ':posey (posey msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':uncertainty (uncertainty msg))
))
;//! \htmlinclude SickLocSetPoseSrv-response.msg.html

(cl:defclass <SickLocSetPoseSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocSetPoseSrv-response (<SickLocSetPoseSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetPoseSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetPoseSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetPoseSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocSetPoseSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocSetPoseSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetPoseSrv-response>) ostream)
  "Serializes a message object of type '<SickLocSetPoseSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetPoseSrv-response>) istream)
  "Deserializes a message object of type '<SickLocSetPoseSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetPoseSrv-response>)))
  "Returns string type for a service object of type '<SickLocSetPoseSrv-response>"
  "sick_lidar_localization/SickLocSetPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetPoseSrv-response)))
  "Returns string type for a service object of type 'SickLocSetPoseSrv-response"
  "sick_lidar_localization/SickLocSetPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetPoseSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocSetPoseSrv-response>"
  "11bcade26cc02b7bbcb448a2abedd38e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetPoseSrv-response)))
  "Returns md5sum for a message object of type 'SickLocSetPoseSrv-response"
  "11bcade26cc02b7bbcb448a2abedd38e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetPoseSrv-response>)))
  "Returns full string definition for message of type '<SickLocSetPoseSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetPoseSrv-response)))
  "Returns full string definition for message of type 'SickLocSetPoseSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetPoseSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetPoseSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetPoseSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocSetPoseSrv)))
  'SickLocSetPoseSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocSetPoseSrv)))
  'SickLocSetPoseSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetPoseSrv)))
  "Returns string type for a service object of type '<SickLocSetPoseSrv>"
  "sick_lidar_localization/SickLocSetPoseSrv")