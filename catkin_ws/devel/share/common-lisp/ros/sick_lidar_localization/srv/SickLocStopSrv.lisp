; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocStopSrv-request.msg.html

(cl:defclass <SickLocStopSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocStopSrv-request (<SickLocStopSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStopSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStopSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStopSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocStopSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStopSrv-request>) ostream)
  "Serializes a message object of type '<SickLocStopSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStopSrv-request>) istream)
  "Deserializes a message object of type '<SickLocStopSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStopSrv-request>)))
  "Returns string type for a service object of type '<SickLocStopSrv-request>"
  "sick_lidar_localization/SickLocStopSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStopSrv-request)))
  "Returns string type for a service object of type 'SickLocStopSrv-request"
  "sick_lidar_localization/SickLocStopSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStopSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocStopSrv-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStopSrv-request)))
  "Returns md5sum for a message object of type 'SickLocStopSrv-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStopSrv-request>)))
  "Returns full string definition for message of type '<SickLocStopSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocStop for sick localization.~%#~%# ROS service SickLocStopAndSave stops localization~%# by sending cola command (\"sMN LocStop\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStopSrv-request)))
  "Returns full string definition for message of type 'SickLocStopSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocStop for sick localization.~%#~%# ROS service SickLocStopAndSave stops localization~%# by sending cola command (\"sMN LocStop\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStopSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStopSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStopSrv-request
))
;//! \htmlinclude SickLocStopSrv-response.msg.html

(cl:defclass <SickLocStopSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocStopSrv-response (<SickLocStopSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStopSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStopSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStopSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocStopSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocStopSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStopSrv-response>) ostream)
  "Serializes a message object of type '<SickLocStopSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStopSrv-response>) istream)
  "Deserializes a message object of type '<SickLocStopSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStopSrv-response>)))
  "Returns string type for a service object of type '<SickLocStopSrv-response>"
  "sick_lidar_localization/SickLocStopSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStopSrv-response)))
  "Returns string type for a service object of type 'SickLocStopSrv-response"
  "sick_lidar_localization/SickLocStopSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStopSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocStopSrv-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStopSrv-response)))
  "Returns md5sum for a message object of type 'SickLocStopSrv-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStopSrv-response>)))
  "Returns full string definition for message of type '<SickLocStopSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStopSrv-response)))
  "Returns full string definition for message of type 'SickLocStopSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStopSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStopSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStopSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocStopSrv)))
  'SickLocStopSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocStopSrv)))
  'SickLocStopSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStopSrv)))
  "Returns string type for a service object of type '<SickLocStopSrv>"
  "sick_lidar_localization/SickLocStopSrv")