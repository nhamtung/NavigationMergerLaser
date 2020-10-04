; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocSetResultPoseIntervalSrv-request.msg.html

(cl:defclass <SickLocSetResultPoseIntervalSrv-request> (roslisp-msg-protocol:ros-message)
  ((interval
    :reader interval
    :initarg :interval
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocSetResultPoseIntervalSrv-request (<SickLocSetResultPoseIntervalSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultPoseIntervalSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultPoseIntervalSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultPoseIntervalSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocSetResultPoseIntervalSrv-request instead.")))

(cl:ensure-generic-function 'interval-val :lambda-list '(m))
(cl:defmethod interval-val ((m <SickLocSetResultPoseIntervalSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:interval-val is deprecated.  Use sick_lidar_localization-srv:interval instead.")
  (interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultPoseIntervalSrv-request>) ostream)
  "Serializes a message object of type '<SickLocSetResultPoseIntervalSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'interval)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultPoseIntervalSrv-request>) istream)
  "Deserializes a message object of type '<SickLocSetResultPoseIntervalSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interval) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultPoseIntervalSrv-request>)))
  "Returns string type for a service object of type '<SickLocSetResultPoseIntervalSrv-request>"
  "sick_lidar_localization/SickLocSetResultPoseIntervalSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPoseIntervalSrv-request)))
  "Returns string type for a service object of type 'SickLocSetResultPoseIntervalSrv-request"
  "sick_lidar_localization/SickLocSetResultPoseIntervalSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultPoseIntervalSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocSetResultPoseIntervalSrv-request>"
  "dfed1807f9eafde8783e0a05f0ca7dce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultPoseIntervalSrv-request)))
  "Returns md5sum for a message object of type 'SickLocSetResultPoseIntervalSrv-request"
  "dfed1807f9eafde8783e0a05f0ca7dce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultPoseIntervalSrv-request>)))
  "Returns full string definition for message of type '<SickLocSetResultPoseIntervalSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultPoseInterval for sick localization.~%#~%# ROS service SickLocSetResultPoseInterval sets the interval of result output telegrams~%# by sending cola command (\"sMN LocSetResultPoseInterval <interval>\")~%# with parameter~%# <interval>:  0-255, interval in number of scans, 1: result with each processed scan, default: 1~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 interval # interval in number of scans, 0-255, 1 (default): result with each processed scan~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultPoseIntervalSrv-request)))
  "Returns full string definition for message of type 'SickLocSetResultPoseIntervalSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocSetResultPoseInterval for sick localization.~%#~%# ROS service SickLocSetResultPoseInterval sets the interval of result output telegrams~%# by sending cola command (\"sMN LocSetResultPoseInterval <interval>\")~%# with parameter~%# <interval>:  0-255, interval in number of scans, 1: result with each processed scan, default: 1~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%int32 interval # interval in number of scans, 0-255, 1 (default): result with each processed scan~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultPoseIntervalSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultPoseIntervalSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultPoseIntervalSrv-request
    (cl:cons ':interval (interval msg))
))
;//! \htmlinclude SickLocSetResultPoseIntervalSrv-response.msg.html

(cl:defclass <SickLocSetResultPoseIntervalSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocSetResultPoseIntervalSrv-response (<SickLocSetResultPoseIntervalSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocSetResultPoseIntervalSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocSetResultPoseIntervalSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocSetResultPoseIntervalSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocSetResultPoseIntervalSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocSetResultPoseIntervalSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocSetResultPoseIntervalSrv-response>) ostream)
  "Serializes a message object of type '<SickLocSetResultPoseIntervalSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocSetResultPoseIntervalSrv-response>) istream)
  "Deserializes a message object of type '<SickLocSetResultPoseIntervalSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocSetResultPoseIntervalSrv-response>)))
  "Returns string type for a service object of type '<SickLocSetResultPoseIntervalSrv-response>"
  "sick_lidar_localization/SickLocSetResultPoseIntervalSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPoseIntervalSrv-response)))
  "Returns string type for a service object of type 'SickLocSetResultPoseIntervalSrv-response"
  "sick_lidar_localization/SickLocSetResultPoseIntervalSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocSetResultPoseIntervalSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocSetResultPoseIntervalSrv-response>"
  "dfed1807f9eafde8783e0a05f0ca7dce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocSetResultPoseIntervalSrv-response)))
  "Returns md5sum for a message object of type 'SickLocSetResultPoseIntervalSrv-response"
  "dfed1807f9eafde8783e0a05f0ca7dce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocSetResultPoseIntervalSrv-response>)))
  "Returns full string definition for message of type '<SickLocSetResultPoseIntervalSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocSetResultPoseIntervalSrv-response)))
  "Returns full string definition for message of type 'SickLocSetResultPoseIntervalSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocSetResultPoseIntervalSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocSetResultPoseIntervalSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocSetResultPoseIntervalSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocSetResultPoseIntervalSrv)))
  'SickLocSetResultPoseIntervalSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocSetResultPoseIntervalSrv)))
  'SickLocSetResultPoseIntervalSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocSetResultPoseIntervalSrv)))
  "Returns string type for a service object of type '<SickLocSetResultPoseIntervalSrv>"
  "sick_lidar_localization/SickLocSetResultPoseIntervalSrv")