; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocSetResultPoseEnabledSrv-request.msg.html

(cl:defclass <SickLocSetResultPoseEnabledSrv-request> (roslisp-msg-protocol:ros-message)
  ((enabled
    :reader enabled
    :initarg :enabled
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocSetResultPoseEnabledSrv-request (<SickLocSetResultPoseEnabledSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultPoseEnabledSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultPoseEnabledSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultPoseEnabledSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocSetResultPoseEnabledSrv-request instead.")))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <SickLocSetResultPoseEnabledSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:enabled-val is deprecated.  Use sick_lidar_localization-srv:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultPoseEnabledSrv-request>) ostream)
  "Serializes a message object of type '<SickLocSetResultPoseEnabledSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'enabled)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultPoseEnabledSrv-request>) istream)
  "Deserializes a message object of type '<SickLocSetResultPoseEnabledSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enabled) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultPoseEnabledSrv-request>)))
  "Returns string type for a service object of type '<SickLocSetResultPoseEnabledSrv-request>"
  "sick_lidar_localization/SickLocSetResultPoseEnabledSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPoseEnabledSrv-request)))
  "Returns string type for a service object of type 'SickLocSetResultPoseEnabledSrv-request"
  "sick_lidar_localization/SickLocSetResultPoseEnabledSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultPoseEnabledSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocSetResultPoseEnabledSrv-request>"
  "1f66c3fbfa9f51fd9331860303d68bcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultPoseEnabledSrv-request)))
  "Returns md5sum for a message object of type 'SickLocSetResultPoseEnabledSrv-request"
  "1f66c3fbfa9f51fd9331860303d68bcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultPoseEnabledSrv-request>)))
  "Returns full string definition for message of type '<SickLocSetResultPoseEnabledSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultPoseEnabled for sick localization.~%#~%# ROS service SickLocSetResultPoseEnabled enables or disables result output telegrams~%# by sending cola command (\"sMN LocSetResultPoseEnabled <enabled>\")~%# with parameter~%# <enabled>: 0: disabled, 1: enabled, default: enabled~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 enabled # 0: result output disabled, result output 1: enabled, default: enabled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultPoseEnabledSrv-request)))
  "Returns full string definition for message of type 'SickLocSetResultPoseEnabledSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultPoseEnabled for sick localization.~%#~%# ROS service SickLocSetResultPoseEnabled enables or disables result output telegrams~%# by sending cola command (\"sMN LocSetResultPoseEnabled <enabled>\")~%# with parameter~%# <enabled>: 0: disabled, 1: enabled, default: enabled~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 enabled # 0: result output disabled, result output 1: enabled, default: enabled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultPoseEnabledSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultPoseEnabledSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultPoseEnabledSrv-request
    (cl:cons ':enabled (enabled msg))
))
;//! \htmlinclude SickLocSetResultPoseEnabledSrv-response.msg.html

(cl:defclass <SickLocSetResultPoseEnabledSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocSetResultPoseEnabledSrv-response (<SickLocSetResultPoseEnabledSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultPoseEnabledSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultPoseEnabledSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultPoseEnabledSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocSetResultPoseEnabledSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocSetResultPoseEnabledSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultPoseEnabledSrv-response>) ostream)
  "Serializes a message object of type '<SickLocSetResultPoseEnabledSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultPoseEnabledSrv-response>) istream)
  "Deserializes a message object of type '<SickLocSetResultPoseEnabledSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultPoseEnabledSrv-response>)))
  "Returns string type for a service object of type '<SickLocSetResultPoseEnabledSrv-response>"
  "sick_lidar_localization/SickLocSetResultPoseEnabledSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPoseEnabledSrv-response)))
  "Returns string type for a service object of type 'SickLocSetResultPoseEnabledSrv-response"
  "sick_lidar_localization/SickLocSetResultPoseEnabledSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultPoseEnabledSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocSetResultPoseEnabledSrv-response>"
  "1f66c3fbfa9f51fd9331860303d68bcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultPoseEnabledSrv-response)))
  "Returns md5sum for a message object of type 'SickLocSetResultPoseEnabledSrv-response"
  "1f66c3fbfa9f51fd9331860303d68bcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultPoseEnabledSrv-response>)))
  "Returns full string definition for message of type '<SickLocSetResultPoseEnabledSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultPoseEnabledSrv-response)))
  "Returns full string definition for message of type 'SickLocSetResultPoseEnabledSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultPoseEnabledSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultPoseEnabledSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultPoseEnabledSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocSetResultPoseEnabledSrv)))
  'SickLocSetResultPoseEnabledSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocSetResultPoseEnabledSrv)))
  'SickLocSetResultPoseEnabledSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPoseEnabledSrv)))
  "Returns string type for a service object of type '<SickLocSetResultPoseEnabledSrv>"
  "sick_lidar_localization/SickLocSetResultPoseEnabledSrv")