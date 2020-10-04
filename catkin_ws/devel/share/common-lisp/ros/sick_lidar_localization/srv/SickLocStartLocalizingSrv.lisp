; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocStartLocalizingSrv-request.msg.html

(cl:defclass <SickLocStartLocalizingSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocStartLocalizingSrv-request (<SickLocStartLocalizingSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStartLocalizingSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStartLocalizingSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStartLocalizingSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocStartLocalizingSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStartLocalizingSrv-request>) ostream)
  "Serializes a message object of type '<SickLocStartLocalizingSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStartLocalizingSrv-request>) istream)
  "Deserializes a message object of type '<SickLocStartLocalizingSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStartLocalizingSrv-request>)))
  "Returns string type for a service object of type '<SickLocStartLocalizingSrv-request>"
  "sick_lidar_localization/SickLocStartLocalizingSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStartLocalizingSrv-request)))
  "Returns string type for a service object of type 'SickLocStartLocalizingSrv-request"
  "sick_lidar_localization/SickLocStartLocalizingSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStartLocalizingSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocStartLocalizingSrv-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStartLocalizingSrv-request)))
  "Returns md5sum for a message object of type 'SickLocStartLocalizingSrv-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStartLocalizingSrv-request>)))
  "Returns full string definition for message of type '<SickLocStartLocalizingSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocStartLocalizing for sick localization.~%#~%# ROS service SickLocStartLocalizing starts localization~%# by sending cola command (\"sMN LocStartLocalizing\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStartLocalizingSrv-request)))
  "Returns full string definition for message of type 'SickLocStartLocalizingSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocStartLocalizing for sick localization.~%#~%# ROS service SickLocStartLocalizing starts localization~%# by sending cola command (\"sMN LocStartLocalizing\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStartLocalizingSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStartLocalizingSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStartLocalizingSrv-request
))
;//! \htmlinclude SickLocStartLocalizingSrv-response.msg.html

(cl:defclass <SickLocStartLocalizingSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocStartLocalizingSrv-response (<SickLocStartLocalizingSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStartLocalizingSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStartLocalizingSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStartLocalizingSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocStartLocalizingSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocStartLocalizingSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStartLocalizingSrv-response>) ostream)
  "Serializes a message object of type '<SickLocStartLocalizingSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStartLocalizingSrv-response>) istream)
  "Deserializes a message object of type '<SickLocStartLocalizingSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStartLocalizingSrv-response>)))
  "Returns string type for a service object of type '<SickLocStartLocalizingSrv-response>"
  "sick_lidar_localization/SickLocStartLocalizingSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStartLocalizingSrv-response)))
  "Returns string type for a service object of type 'SickLocStartLocalizingSrv-response"
  "sick_lidar_localization/SickLocStartLocalizingSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStartLocalizingSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocStartLocalizingSrv-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStartLocalizingSrv-response)))
  "Returns md5sum for a message object of type 'SickLocStartLocalizingSrv-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStartLocalizingSrv-response>)))
  "Returns full string definition for message of type '<SickLocStartLocalizingSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller (localization started), false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStartLocalizingSrv-response)))
  "Returns full string definition for message of type 'SickLocStartLocalizingSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller (localization started), false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStartLocalizingSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStartLocalizingSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStartLocalizingSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocStartLocalizingSrv)))
  'SickLocStartLocalizingSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocStartLocalizingSrv)))
  'SickLocStartLocalizingSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStartLocalizingSrv)))
  "Returns string type for a service object of type '<SickLocStartLocalizingSrv>"
  "sick_lidar_localization/SickLocStartLocalizingSrv")