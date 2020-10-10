; Auto-generated. Do not edit!


(cl:in-package driver_blvd_controller-msg)


;//! \htmlinclude MLS_Measurement.msg.html

(cl:defclass <MLS_Measurement> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lcp
    :reader lcp
    :initarg :lcp
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MLS_Measurement (<MLS_Measurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLS_Measurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLS_Measurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name driver_blvd_controller-msg:<MLS_Measurement> is deprecated: use driver_blvd_controller-msg:MLS_Measurement instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MLS_Measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:header-val is deprecated.  Use driver_blvd_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MLS_Measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:position-val is deprecated.  Use driver_blvd_controller-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'lcp-val :lambda-list '(m))
(cl:defmethod lcp-val ((m <MLS_Measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:lcp-val is deprecated.  Use driver_blvd_controller-msg:lcp instead.")
  (lcp m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MLS_Measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:status-val is deprecated.  Use driver_blvd_controller-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <MLS_Measurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:error-val is deprecated.  Use driver_blvd_controller-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLS_Measurement>) ostream)
  "Serializes a message object of type '<MLS_Measurement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lcp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLS_Measurement>) istream)
  "Deserializes a message object of type '<MLS_Measurement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lcp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLS_Measurement>)))
  "Returns string type for a message object of type '<MLS_Measurement>"
  "driver_blvd_controller/MLS_Measurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLS_Measurement)))
  "Returns string type for a message object of type 'MLS_Measurement"
  "driver_blvd_controller/MLS_Measurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLS_Measurement>)))
  "Returns md5sum for a message object of type '<MLS_Measurement>"
  "294c7b9c3028152b491bf17d4eb40177")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLS_Measurement)))
  "Returns md5sum for a message object of type 'MLS_Measurement"
  "294c7b9c3028152b491bf17d4eb40177")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLS_Measurement>)))
  "Returns full string definition for message of type '<MLS_Measurement>"
  (cl:format cl:nil "# MLS_Measurement.msg defines a single measurement of a SICK MLS.~%# See operation instructions for details (www.sick.com/mls).~%#~%~%# Header with sequence id, timestamp of the measurement and frame id ~%Header header~%~%# Array of measured positions for up to 3 lines.~%# Each position is the distance to the center of a line (line center point) in meter.~%# More than one line is detected in case of junctions.~%float32[] position      # distance to the line center point [m]~%~%# LCP-flags (signs and line assignment)~%uint8 lcp               # flags (signs and assignment, see chap. 8 of operation instructions)~%~%# Detection status~%uint8 status            # status (see chap. 8 of operation instructions)~%~%# Error register~%uint8 error             # error register (0x1001, value 0 = okay, see chap. 8 of operation instructions)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLS_Measurement)))
  "Returns full string definition for message of type 'MLS_Measurement"
  (cl:format cl:nil "# MLS_Measurement.msg defines a single measurement of a SICK MLS.~%# See operation instructions for details (www.sick.com/mls).~%#~%~%# Header with sequence id, timestamp of the measurement and frame id ~%Header header~%~%# Array of measured positions for up to 3 lines.~%# Each position is the distance to the center of a line (line center point) in meter.~%# More than one line is detected in case of junctions.~%float32[] position      # distance to the line center point [m]~%~%# LCP-flags (signs and line assignment)~%uint8 lcp               # flags (signs and assignment, see chap. 8 of operation instructions)~%~%# Detection status~%uint8 status            # status (see chap. 8 of operation instructions)~%~%# Error register~%uint8 error             # error register (0x1001, value 0 = okay, see chap. 8 of operation instructions)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLS_Measurement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLS_Measurement>))
  "Converts a ROS message object to a list"
  (cl:list 'MLS_Measurement
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':lcp (lcp msg))
    (cl:cons ':status (status msg))
    (cl:cons ':error (error msg))
))
