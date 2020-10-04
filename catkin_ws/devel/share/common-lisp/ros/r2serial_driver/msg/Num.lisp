; Auto-generated. Do not edit!


(cl:in-package r2serial_driver-msg)


;//! \htmlinclude Num.msg.html

(cl:defclass <Num> (roslisp-msg-protocol:ros-message)
  ((RMID
    :reader RMID
    :initarg :RMID
    :type cl:fixnum
    :initform 0)
   (TMID
    :reader TMID
    :initarg :TMID
    :type cl:fixnum
    :initform 0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (PID
    :reader PID
    :initarg :PID
    :type cl:fixnum
    :initform 0)
   (DataNum
    :reader DataNum
    :initarg :DataNum
    :type cl:fixnum
    :initform 0)
   (Dta_Low
    :reader Dta_Low
    :initarg :Dta_Low
    :type cl:fixnum
    :initform 0)
   (Dta_High
    :reader Dta_High
    :initarg :Dta_High
    :type cl:fixnum
    :initform 0)
   (Sum
    :reader Sum
    :initarg :Sum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Num (<Num>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Num>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Num)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r2serial_driver-msg:<Num> is deprecated: use r2serial_driver-msg:Num instead.")))

(cl:ensure-generic-function 'RMID-val :lambda-list '(m))
(cl:defmethod RMID-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:RMID-val is deprecated.  Use r2serial_driver-msg:RMID instead.")
  (RMID m))

(cl:ensure-generic-function 'TMID-val :lambda-list '(m))
(cl:defmethod TMID-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:TMID-val is deprecated.  Use r2serial_driver-msg:TMID instead.")
  (TMID m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:ID-val is deprecated.  Use r2serial_driver-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'PID-val :lambda-list '(m))
(cl:defmethod PID-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:PID-val is deprecated.  Use r2serial_driver-msg:PID instead.")
  (PID m))

(cl:ensure-generic-function 'DataNum-val :lambda-list '(m))
(cl:defmethod DataNum-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:DataNum-val is deprecated.  Use r2serial_driver-msg:DataNum instead.")
  (DataNum m))

(cl:ensure-generic-function 'Dta_Low-val :lambda-list '(m))
(cl:defmethod Dta_Low-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:Dta_Low-val is deprecated.  Use r2serial_driver-msg:Dta_Low instead.")
  (Dta_Low m))

(cl:ensure-generic-function 'Dta_High-val :lambda-list '(m))
(cl:defmethod Dta_High-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:Dta_High-val is deprecated.  Use r2serial_driver-msg:Dta_High instead.")
  (Dta_High m))

(cl:ensure-generic-function 'Sum-val :lambda-list '(m))
(cl:defmethod Sum-val ((m <Num>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r2serial_driver-msg:Sum-val is deprecated.  Use r2serial_driver-msg:Sum instead.")
  (Sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Num>) ostream)
  "Serializes a message object of type '<Num>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RMID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TMID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DataNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Dta_Low)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Dta_High)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Num>) istream)
  "Deserializes a message object of type '<Num>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RMID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TMID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DataNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Dta_Low)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Dta_High)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Num>)))
  "Returns string type for a message object of type '<Num>"
  "r2serial_driver/Num")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Num)))
  "Returns string type for a message object of type 'Num"
  "r2serial_driver/Num")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Num>)))
  "Returns md5sum for a message object of type '<Num>"
  "137910bf2ef85fa95265084c3edcdb56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Num)))
  "Returns md5sum for a message object of type 'Num"
  "137910bf2ef85fa95265084c3edcdb56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Num>)))
  "Returns full string definition for message of type '<Num>"
  (cl:format cl:nil "uint8 RMID~%uint8 TMID ~%uint8 ID~%uint8 PID~%uint8 DataNum~%uint8 Dta_Low~%uint8 Dta_High~%uint8 Sum~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Num)))
  "Returns full string definition for message of type 'Num"
  (cl:format cl:nil "uint8 RMID~%uint8 TMID ~%uint8 ID~%uint8 PID~%uint8 DataNum~%uint8 Dta_Low~%uint8 Dta_High~%uint8 Sum~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Num>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Num>))
  "Converts a ROS message object to a list"
  (cl:list 'Num
    (cl:cons ':RMID (RMID msg))
    (cl:cons ':TMID (TMID msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':PID (PID msg))
    (cl:cons ':DataNum (DataNum msg))
    (cl:cons ':Dta_Low (Dta_Low msg))
    (cl:cons ':Dta_High (Dta_High msg))
    (cl:cons ':Sum (Sum msg))
))
