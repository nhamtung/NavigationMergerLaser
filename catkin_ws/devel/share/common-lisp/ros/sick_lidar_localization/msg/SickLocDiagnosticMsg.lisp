; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocDiagnosticMsg.msg.html

(cl:defclass <SickLocDiagnosticMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SickLocDiagnosticMsg (<SickLocDiagnosticMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocDiagnosticMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocDiagnosticMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocDiagnosticMsg> is deprecated: use sick_lidar_localization-msg:SickLocDiagnosticMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SickLocDiagnosticMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:header-val is deprecated.  Use sick_lidar_localization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SickLocDiagnosticMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:error_code-val is deprecated.  Use sick_lidar_localization-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SickLocDiagnosticMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:message-val is deprecated.  Use sick_lidar_localization-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocDiagnosticMsg>) ostream)
  "Serializes a message object of type '<SickLocDiagnosticMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocDiagnosticMsg>) istream)
  "Deserializes a message object of type '<SickLocDiagnosticMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocDiagnosticMsg>)))
  "Returns string type for a message object of type '<SickLocDiagnosticMsg>"
  "sick_lidar_localization/SickLocDiagnosticMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocDiagnosticMsg)))
  "Returns string type for a message object of type 'SickLocDiagnosticMsg"
  "sick_lidar_localization/SickLocDiagnosticMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocDiagnosticMsg>)))
  "Returns md5sum for a message object of type '<SickLocDiagnosticMsg>"
  "c51f3a40db1be5dd1e9301b7d3362c8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocDiagnosticMsg)))
  "Returns md5sum for a message object of type 'SickLocDiagnosticMsg"
  "c51f3a40db1be5dd1e9301b7d3362c8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocDiagnosticMsg>)))
  "Returns full string definition for message of type '<SickLocDiagnosticMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocDiagnosticMsg.~%# SickLocDiagnosticMsg publishes diagnostic messages~%# of the sick localization driver.~%~%Header header      # ROS Header with sequence id, timestamp and frame id~%int32  error_code  # error code (0 := no error)~%string message     # diagnostic message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocDiagnosticMsg)))
  "Returns full string definition for message of type 'SickLocDiagnosticMsg"
  (cl:format cl:nil "# Definition of ros message SickLocDiagnosticMsg.~%# SickLocDiagnosticMsg publishes diagnostic messages~%# of the sick localization driver.~%~%Header header      # ROS Header with sequence id, timestamp and frame id~%int32  error_code  # error code (0 := no error)~%string message     # diagnostic message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocDiagnosticMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocDiagnosticMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocDiagnosticMsg
    (cl:cons ':header (header msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
