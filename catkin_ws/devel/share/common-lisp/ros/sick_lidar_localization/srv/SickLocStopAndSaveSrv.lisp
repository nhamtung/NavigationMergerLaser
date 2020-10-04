; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-srv)


;//! \htmlinclude SickLocStopAndSaveSrv-request.msg.html

(cl:defclass <SickLocStopAndSaveSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SickLocStopAndSaveSrv-request (<SickLocStopAndSaveSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStopAndSaveSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStopAndSaveSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStopAndSaveSrv-request> is deprecated: use sick_lidar_localization-srv:SickLocStopAndSaveSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStopAndSaveSrv-request>) ostream)
  "Serializes a message object of type '<SickLocStopAndSaveSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStopAndSaveSrv-request>) istream)
  "Deserializes a message object of type '<SickLocStopAndSaveSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStopAndSaveSrv-request>)))
  "Returns string type for a service object of type '<SickLocStopAndSaveSrv-request>"
  "sick_lidar_localization/SickLocStopAndSaveSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStopAndSaveSrv-request)))
  "Returns string type for a service object of type 'SickLocStopAndSaveSrv-request"
  "sick_lidar_localization/SickLocStopAndSaveSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStopAndSaveSrv-request>)))
  "Returns md5sum for a message object of type '<SickLocStopAndSaveSrv-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStopAndSaveSrv-request)))
  "Returns md5sum for a message object of type 'SickLocStopAndSaveSrv-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStopAndSaveSrv-request>)))
  "Returns full string definition for message of type '<SickLocStopAndSaveSrv-request>"
  (cl:format cl:nil "# Definition of ROS service SickLocStopAndSave for sick localization.~%#~%# ROS service SickLocStopAndSave stops localization and saves settings~%# by sending cola command (\"sMN LocStopAndSave\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStopAndSaveSrv-request)))
  "Returns full string definition for message of type 'SickLocStopAndSaveSrv-request"
  (cl:format cl:nil "# Definition of ROS service SickLocStopAndSave for sick localization.~%#~%# ROS service SickLocStopAndSave stops localization and saves settings~%# by sending cola command (\"sMN LocStopAndSave\").~%#~%# See Telegram-Listing-v1.1.0.241R.pdf for further details about ~%# Cola telegrams and this command.~%~%#~%# Request (input)~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStopAndSaveSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStopAndSaveSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStopAndSaveSrv-request
))
;//! \htmlinclude SickLocStopAndSaveSrv-response.msg.html

(cl:defclass <SickLocStopAndSaveSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SickLocStopAndSaveSrv-response (<SickLocStopAndSaveSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocStopAndSaveSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocStopAndSaveSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-srv:<SickLocStopAndSaveSrv-response> is deprecated: use sick_lidar_localization-srv:SickLocStopAndSaveSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SickLocStopAndSaveSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-srv:success-val is deprecated.  Use sick_lidar_localization-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocStopAndSaveSrv-response>) ostream)
  "Serializes a message object of type '<SickLocStopAndSaveSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocStopAndSaveSrv-response>) istream)
  "Deserializes a message object of type '<SickLocStopAndSaveSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocStopAndSaveSrv-response>)))
  "Returns string type for a service object of type '<SickLocStopAndSaveSrv-response>"
  "sick_lidar_localization/SickLocStopAndSaveSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStopAndSaveSrv-response)))
  "Returns string type for a service object of type 'SickLocStopAndSaveSrv-response"
  "sick_lidar_localization/SickLocStopAndSaveSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocStopAndSaveSrv-response>)))
  "Returns md5sum for a message object of type '<SickLocStopAndSaveSrv-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocStopAndSaveSrv-response)))
  "Returns md5sum for a message object of type 'SickLocStopAndSaveSrv-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocStopAndSaveSrv-response>)))
  "Returns full string definition for message of type '<SickLocStopAndSaveSrv-response>"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocStopAndSaveSrv-response)))
  "Returns full string definition for message of type 'SickLocStopAndSaveSrv-response"
  (cl:format cl:nil "~%#~%# Response (output)~%#~%~%bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocStopAndSaveSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocStopAndSaveSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocStopAndSaveSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SickLocStopAndSaveSrv)))
  'SickLocStopAndSaveSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SickLocStopAndSaveSrv)))
  'SickLocStopAndSaveSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocStopAndSaveSrv)))
  "Returns string type for a service object of type '<SickLocStopAndSaveSrv>"
  "sick_lidar_localization/SickLocStopAndSaveSrv")