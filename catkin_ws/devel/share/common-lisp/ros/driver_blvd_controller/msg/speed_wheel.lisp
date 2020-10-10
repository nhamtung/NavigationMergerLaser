; Auto-generated. Do not edit!


(cl:in-package driver_blvd_controller-msg)


;//! \htmlinclude speed_wheel.msg.html

(cl:defclass <speed_wheel> (roslisp-msg-protocol:ros-message)
  ((wheel_letf
    :reader wheel_letf
    :initarg :wheel_letf
    :type cl:fixnum
    :initform 0)
   (wheel_right
    :reader wheel_right
    :initarg :wheel_right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass speed_wheel (<speed_wheel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed_wheel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed_wheel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name driver_blvd_controller-msg:<speed_wheel> is deprecated: use driver_blvd_controller-msg:speed_wheel instead.")))

(cl:ensure-generic-function 'wheel_letf-val :lambda-list '(m))
(cl:defmethod wheel_letf-val ((m <speed_wheel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:wheel_letf-val is deprecated.  Use driver_blvd_controller-msg:wheel_letf instead.")
  (wheel_letf m))

(cl:ensure-generic-function 'wheel_right-val :lambda-list '(m))
(cl:defmethod wheel_right-val ((m <speed_wheel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader driver_blvd_controller-msg:wheel_right-val is deprecated.  Use driver_blvd_controller-msg:wheel_right instead.")
  (wheel_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed_wheel>) ostream)
  "Serializes a message object of type '<speed_wheel>"
  (cl:let* ((signed (cl:slot-value msg 'wheel_letf)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed_wheel>) istream)
  "Deserializes a message object of type '<speed_wheel>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_letf) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_right) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed_wheel>)))
  "Returns string type for a message object of type '<speed_wheel>"
  "driver_blvd_controller/speed_wheel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed_wheel)))
  "Returns string type for a message object of type 'speed_wheel"
  "driver_blvd_controller/speed_wheel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed_wheel>)))
  "Returns md5sum for a message object of type '<speed_wheel>"
  "fa530f9e80374edbcefccea8ede27bff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed_wheel)))
  "Returns md5sum for a message object of type 'speed_wheel"
  "fa530f9e80374edbcefccea8ede27bff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed_wheel>)))
  "Returns full string definition for message of type '<speed_wheel>"
  (cl:format cl:nil "int16 wheel_letf~%int16 wheel_right ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed_wheel)))
  "Returns full string definition for message of type 'speed_wheel"
  (cl:format cl:nil "int16 wheel_letf~%int16 wheel_right ~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed_wheel>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed_wheel>))
  "Converts a ROS message object to a list"
  (cl:list 'speed_wheel
    (cl:cons ':wheel_letf (wheel_letf msg))
    (cl:cons ':wheel_right (wheel_right msg))
))
