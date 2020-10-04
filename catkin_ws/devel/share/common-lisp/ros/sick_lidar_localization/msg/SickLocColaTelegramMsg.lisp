; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocColaTelegramMsg.msg.html

(cl:defclass <SickLocColaTelegramMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command_type
    :reader command_type
    :initarg :command_type
    :type cl:integer
    :initform 0)
   (command_name
    :reader command_name
    :initarg :command_name
    :type cl:string
    :initform "")
   (parameter
    :reader parameter
    :initarg :parameter
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SickLocColaTelegramMsg (<SickLocColaTelegramMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocColaTelegramMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocColaTelegramMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocColaTelegramMsg> is deprecated: use sick_lidar_localization-msg:SickLocColaTelegramMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SickLocColaTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:header-val is deprecated.  Use sick_lidar_localization-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <SickLocColaTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:command_type-val is deprecated.  Use sick_lidar_localization-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'command_name-val :lambda-list '(m))
(cl:defmethod command_name-val ((m <SickLocColaTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:command_name-val is deprecated.  Use sick_lidar_localization-msg:command_name instead.")
  (command_name m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <SickLocColaTelegramMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:parameter-val is deprecated.  Use sick_lidar_localization-msg:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocColaTelegramMsg>) ostream)
  "Serializes a message object of type '<SickLocColaTelegramMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'command_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'parameter))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocColaTelegramMsg>) istream)
  "Deserializes a message object of type '<SickLocColaTelegramMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameter) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameter)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocColaTelegramMsg>)))
  "Returns string type for a message object of type '<SickLocColaTelegramMsg>"
  "sick_lidar_localization/SickLocColaTelegramMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocColaTelegramMsg)))
  "Returns string type for a message object of type 'SickLocColaTelegramMsg"
  "sick_lidar_localization/SickLocColaTelegramMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocColaTelegramMsg>)))
  "Returns md5sum for a message object of type '<SickLocColaTelegramMsg>"
  "fda058e73f190c37b2ae74d5f8aa66d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocColaTelegramMsg)))
  "Returns md5sum for a message object of type 'SickLocColaTelegramMsg"
  "fda058e73f190c37b2ae74d5f8aa66d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocColaTelegramMsg>)))
  "Returns full string definition for message of type '<SickLocColaTelegramMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocColaTelegramMsg.~%# SickLocColaTelegramMsg publishes Cola-ASCII telegrams for sick localization.~%# See Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.PDF for further details~%# about Cola telgrams~%~%Header header        # ROS Header with sequence id, timestamp and frame id~%~%int32 command_type   # One of the SOPAS Commands sRN (1, Read by name request) or sRA (2, Read by name response) or sMN (3, Method by name request) or sMA (4, Method by name response) or sWN (5, Write by name request)~%~%string command_name  # Name of command like \"SetAccessMode\", \"LocSetResultPoseEnabled\", \"LocRequestTimestamp\", etc.~%~%string[] parameter   # Optional parameter, type and number parameter depend on the command, f.e. \"sMN SetAccessMode 3 F4724744\" with 2 parameter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocColaTelegramMsg)))
  "Returns full string definition for message of type 'SickLocColaTelegramMsg"
  (cl:format cl:nil "# Definition of ros message SickLocColaTelegramMsg.~%# SickLocColaTelegramMsg publishes Cola-ASCII telegrams for sick localization.~%# See Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.PDF for further details~%# about Cola telgrams~%~%Header header        # ROS Header with sequence id, timestamp and frame id~%~%int32 command_type   # One of the SOPAS Commands sRN (1, Read by name request) or sRA (2, Read by name response) or sMN (3, Method by name request) or sMA (4, Method by name response) or sWN (5, Write by name request)~%~%string command_name  # Name of command like \"SetAccessMode\", \"LocSetResultPoseEnabled\", \"LocRequestTimestamp\", etc.~%~%string[] parameter   # Optional parameter, type and number parameter depend on the command, f.e. \"sMN SetAccessMode 3 F4724744\" with 2 parameter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocColaTelegramMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'command_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocColaTelegramMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocColaTelegramMsg
    (cl:cons ':header (header msg))
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':command_name (command_name msg))
    (cl:cons ':parameter (parameter msg))
))
