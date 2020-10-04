; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocRequestResultDataSrv-request.msg.html

(cl:defclass <SickLocRequestResultDataSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocRequestResultDataSrv-request (<SickLocRequestResultDataSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocRequestResultDataSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocRequestResultDataSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocRequestResultDataSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocRequestResultDataSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocRequestResultDataSrv-request>) ostream)
  "Serializes a message object of type '<SickLocRequestResultDataSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocRequestResultDataSrv-request>) istream)
  "Deserializes a message object of type '<SickLocRequestResultDataSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocRequestResultDataSrv-request>)))
  "Returns string type for a service object of type '<SickLocRequestResultDataSrv-request>"
  "sick_lidar_localization/SickLocRequestResultDataSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocRequestResultDataSrv-request)))
  "Returns string type for a service object of type 'SickLocRequestResultDataSrv-request"
  "sick_lidar_localization/SickLocRequestResultDataSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocRequestResultDataSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocRequestResultDataSrv-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocRequestResultDataSrv-request)))
  "Returns md5sum for a message object of type 'SickLocRequestResultDataSrv-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocRequestResultDataSrv-request>)))
  "Returns full string definition for message of type '<SickLocRequestResultDataSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocRequestResultData for sick localization.~%#~%# If in poll mode, ROS service SickLocRequestResultData triggers sending the localization result of the next processed scan via TCP interface~%# by sending cola command (\"sMN LocRequestResultData\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocRequestResultDataSrv-request)))
  "Returns full string definition for message of type 'SickLocRequestResultDataSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocRequestResultData for sick localization.~%#~%# If in poll mode, ROS service SickLocRequestResultData triggers sending the localization result of the next processed scan via TCP interface~%# by sending cola command (\"sMN LocRequestResultData\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocRequestResultDataSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocRequestResultDataSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocRequestResultDataSrv-request
))
;//! \htmlinclude SickLocRequestResultDataSrv-response.msg.html

(cl:defclass <SickLocRequestResultDataSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocRequestResultDataSrv-response (<SickLocRequestResultDataSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocRequestResultDataSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocRequestResultDataSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocRequestResultDataSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocRequestResultDataSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocRequestResultDataSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocRequestResultDataSrv-response>) ostream)
  "Serializes a message object of type '<SickLocRequestResultDataSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocRequestResultDataSrv-response>) istream)
  "Deserializes a message object of type '<SickLocRequestResultDataSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocRequestResultDataSrv-response>)))
  "Returns string type for a service object of type '<SickLocRequestResultDataSrv-response>"
  "sick_lidar_localization/SickLocRequestResultDataSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocRequestResultDataSrv-response)))
  "Returns string type for a service object of type 'SickLocRequestResultDataSrv-response"
  "sick_lidar_localization/SickLocRequestResultDataSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocRequestResultDataSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocRequestResultDataSrv-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocRequestResultDataSrv-response)))
  "Returns md5sum for a message object of type 'SickLocRequestResultDataSrv-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocRequestResultDataSrv-response>)))
  "Returns full string definition for message of type '<SickLocRequestResultDataSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocRequestResultDataSrv-response)))
  "Returns full string definition for message of type 'SickLocRequestResultDataSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocRequestResultDataSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocRequestResultDataSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocRequestResultDataSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocRequestResultDataSrv)))
  'SickLocRequestResultDataSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocRequestResultDataSrv)))
  'SickLocRequestResultDataSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocRequestResultDataSrv)))
  "Returns string type for a service object of type '<SickLocRequestResultDataSrv>"
  "sick_lidar_localization/SickLocRequestResultDataSrv")