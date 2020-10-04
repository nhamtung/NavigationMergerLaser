; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocIsSystemReadySrv-request.msg.html

(cl:defclass <SickLocIsSystemReadySrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocIsSystemReadySrv-request (<SickLocIsSystemReadySrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocIsSystemReadySrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocIsSystemReadySrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocIsSystemReadySrv-request> is deprecated: use sick_lidar_localization-srv:SickLocIsSystemReadySrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocIsSystemReadySrv-request>) ostream)
  "Serializes a message object of type '<SickLocIsSystemReadySrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocIsSystemReadySrv-request>) istream)
  "Deserializes a message object of type '<SickLocIsSystemReadySrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocIsSystemReadySrv-request>)))
  "Returns string type for a service object of type '<SickLocIsSystemReadySrv-request>"
  "sick_lidar_localization/SickLocIsSystemReadySrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocIsSystemReadySrv-request)))
  "Returns string type for a service object of type 'SickLocIsSystemReadySrv-request"
  "sick_lidar_localization/SickLocIsSystemReadySrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocIsSystemReadySrv-request>)))
  "Returns md5sum for a message object of type '<SickLocIsSystemReadySrv-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocIsSystemReadySrv-request)))
  "Returns md5sum for a message object of type 'SickLocIsSystemReadySrv-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocIsSystemReadySrv-request>)))
  "Returns full string definition for message of type '<SickLocIsSystemReadySrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocIsSystemReady for sick localization.~%#~%# ROS service SickLocIsSystemReady check if the system is ready~%# by sending cola command (\"sMN IsSystemReady\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocIsSystemReadySrv-request)))
  "Returns full string definition for message of type 'SickLocIsSystemReadySrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocIsSystemReady for sick localization.~%#~%# ROS service SickLocIsSystemReady check if the system is ready~%# by sending cola command (\"sMN IsSystemReady\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocIsSystemReadySrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocIsSystemReadySrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocIsSystemReadySrv-request
))
;//! \htmlinclude SickLocIsSystemReadySrv-response.msg.html

(cl:defclass <SickLocIsSystemReadySrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocIsSystemReadySrv-response (<SickLocIsSystemReadySrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocIsSystemReadySrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocIsSystemReadySrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocIsSystemReadySrv-response> is deprecated: use sick_lidar_localization-srv:SickLocIsSystemReadySrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocIsSystemReadySrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocIsSystemReadySrv-response>) ostream)
  "Serializes a message object of type '<SickLocIsSystemReadySrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocIsSystemReadySrv-response>) istream)
  "Deserializes a message object of type '<SickLocIsSystemReadySrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocIsSystemReadySrv-response>)))
  "Returns string type for a service object of type '<SickLocIsSystemReadySrv-response>"
  "sick_lidar_localization/SickLocIsSystemReadySrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocIsSystemReadySrv-response)))
  "Returns string type for a service object of type 'SickLocIsSystemReadySrv-response"
  "sick_lidar_localization/SickLocIsSystemReadySrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocIsSystemReadySrv-response>)))
  "Returns md5sum for a message object of type '<SickLocIsSystemReadySrv-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocIsSystemReadySrv-response)))
  "Returns md5sum for a message object of type 'SickLocIsSystemReadySrv-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocIsSystemReadySrv-response>)))
  "Returns full string definition for message of type '<SickLocIsSystemReadySrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: system ready response received from localization controller, false: system not ready or service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocIsSystemReadySrv-response)))
  "Returns full string definition for message of type 'SickLocIsSystemReadySrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: system ready response received from localization controller, false: system not ready or service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocIsSystemReadySrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocIsSystemReadySrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocIsSystemReadySrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocIsSystemReadySrv)))
  'SickLocIsSystemReadySrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocIsSystemReadySrv)))
  'SickLocIsSystemReadySrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocIsSystemReadySrv)))
  "Returns string type for a service object of type '<SickLocIsSystemReadySrv>"
  "sick_lidar_localization/SickLocIsSystemReadySrv")