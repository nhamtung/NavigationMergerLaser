; Auto-generated. Do not edit!


(cl:in-package sick_lidar_localization-msg)


;//! \htmlinclude SickLocResultPortPayloadMsg.msg.html

(cl:defclass <SickLocResultPortPayloadMsg> (roslisp-msg-protocol:ros-message)
  ((ErrorCode
    :reader ErrorCode
    :initarg :ErrorCode
    :type cl:fixnum
    :initform 0)
   (ScanCounter
    :reader ScanCounter
    :initarg :ScanCounter
    :type cl:integer
    :initform 0)
   (Timestamp
    :reader Timestamp
    :initarg :Timestamp
    :type cl:integer
    :initform 0)
   (PoseX
    :reader PoseX
    :initarg :PoseX
    :type cl:integer
    :initform 0)
   (PoseY
    :reader PoseY
    :initarg :PoseY
    :type cl:integer
    :initform 0)
   (PoseYaw
    :reader PoseYaw
    :initarg :PoseYaw
    :type cl:integer
    :initform 0)
   (Reserved1
    :reader Reserved1
    :initarg :Reserved1
    :type cl:integer
    :initform 0)
   (Reserved2
    :reader Reserved2
    :initarg :Reserved2
    :type cl:integer
    :initform 0)
   (Quality
    :reader Quality
    :initarg :Quality
    :type cl:fixnum
    :initform 0)
   (OutliersRatio
    :reader OutliersRatio
    :initarg :OutliersRatio
    :type cl:fixnum
    :initform 0)
   (CovarianceX
    :reader CovarianceX
    :initarg :CovarianceX
    :type cl:integer
    :initform 0)
   (CovarianceY
    :reader CovarianceY
    :initarg :CovarianceY
    :type cl:integer
    :initform 0)
   (CovarianceYaw
    :reader CovarianceYaw
    :initarg :CovarianceYaw
    :type cl:integer
    :initform 0)
   (Reserved3
    :reader Reserved3
    :initarg :Reserved3
    :type cl:integer
    :initform 0))
)

(cl:defclass SickLocResultPortPayloadMsg (<SickLocResultPortPayloadMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SickLocResultPortPayloadMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SickLocResultPortPayloadMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_lidar_localization-msg:<SickLocResultPortPayloadMsg> is deprecated: use sick_lidar_localization-msg:SickLocResultPortPayloadMsg instead.")))

(cl:ensure-generic-function 'ErrorCode-val :lambda-list '(m))
(cl:defmethod ErrorCode-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:ErrorCode-val is deprecated.  Use sick_lidar_localization-msg:ErrorCode instead.")
  (ErrorCode m))

(cl:ensure-generic-function 'ScanCounter-val :lambda-list '(m))
(cl:defmethod ScanCounter-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:ScanCounter-val is deprecated.  Use sick_lidar_localization-msg:ScanCounter instead.")
  (ScanCounter m))

(cl:ensure-generic-function 'Timestamp-val :lambda-list '(m))
(cl:defmethod Timestamp-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Timestamp-val is deprecated.  Use sick_lidar_localization-msg:Timestamp instead.")
  (Timestamp m))

(cl:ensure-generic-function 'PoseX-val :lambda-list '(m))
(cl:defmethod PoseX-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:PoseX-val is deprecated.  Use sick_lidar_localization-msg:PoseX instead.")
  (PoseX m))

(cl:ensure-generic-function 'PoseY-val :lambda-list '(m))
(cl:defmethod PoseY-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:PoseY-val is deprecated.  Use sick_lidar_localization-msg:PoseY instead.")
  (PoseY m))

(cl:ensure-generic-function 'PoseYaw-val :lambda-list '(m))
(cl:defmethod PoseYaw-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:PoseYaw-val is deprecated.  Use sick_lidar_localization-msg:PoseYaw instead.")
  (PoseYaw m))

(cl:ensure-generic-function 'Reserved1-val :lambda-list '(m))
(cl:defmethod Reserved1-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Reserved1-val is deprecated.  Use sick_lidar_localization-msg:Reserved1 instead.")
  (Reserved1 m))

(cl:ensure-generic-function 'Reserved2-val :lambda-list '(m))
(cl:defmethod Reserved2-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Reserved2-val is deprecated.  Use sick_lidar_localization-msg:Reserved2 instead.")
  (Reserved2 m))

(cl:ensure-generic-function 'Quality-val :lambda-list '(m))
(cl:defmethod Quality-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Quality-val is deprecated.  Use sick_lidar_localization-msg:Quality instead.")
  (Quality m))

(cl:ensure-generic-function 'OutliersRatio-val :lambda-list '(m))
(cl:defmethod OutliersRatio-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:OutliersRatio-val is deprecated.  Use sick_lidar_localization-msg:OutliersRatio instead.")
  (OutliersRatio m))

(cl:ensure-generic-function 'CovarianceX-val :lambda-list '(m))
(cl:defmethod CovarianceX-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:CovarianceX-val is deprecated.  Use sick_lidar_localization-msg:CovarianceX instead.")
  (CovarianceX m))

(cl:ensure-generic-function 'CovarianceY-val :lambda-list '(m))
(cl:defmethod CovarianceY-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:CovarianceY-val is deprecated.  Use sick_lidar_localization-msg:CovarianceY instead.")
  (CovarianceY m))

(cl:ensure-generic-function 'CovarianceYaw-val :lambda-list '(m))
(cl:defmethod CovarianceYaw-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:CovarianceYaw-val is deprecated.  Use sick_lidar_localization-msg:CovarianceYaw instead.")
  (CovarianceYaw m))

(cl:ensure-generic-function 'Reserved3-val :lambda-list '(m))
(cl:defmethod Reserved3-val ((m <SickLocResultPortPayloadMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_lidar_localization-msg:Reserved3-val is deprecated.  Use sick_lidar_localization-msg:Reserved3 instead.")
  (Reserved3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SickLocResultPortPayloadMsg>) ostream)
  "Serializes a message object of type '<SickLocResultPortPayloadMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ErrorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ErrorCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ScanCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ScanCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ScanCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ScanCounter)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Timestamp)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'PoseX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PoseY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PoseYaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved1)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Reserved2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'OutliersRatio)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'CovarianceX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CovarianceY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CovarianceYaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Reserved3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Reserved3)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SickLocResultPortPayloadMsg>) istream)
  "Deserializes a message object of type '<SickLocResultPortPayloadMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ErrorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ErrorCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ScanCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ScanCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ScanCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ScanCounter)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Timestamp)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PoseX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PoseY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PoseYaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved1)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Reserved2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'OutliersRatio)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CovarianceX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CovarianceY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CovarianceYaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Reserved3)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SickLocResultPortPayloadMsg>)))
  "Returns string type for a message object of type '<SickLocResultPortPayloadMsg>"
  "sick_lidar_localization/SickLocResultPortPayloadMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SickLocResultPortPayloadMsg)))
  "Returns string type for a message object of type 'SickLocResultPortPayloadMsg"
  "sick_lidar_localization/SickLocResultPortPayloadMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SickLocResultPortPayloadMsg>)))
  "Returns md5sum for a message object of type '<SickLocResultPortPayloadMsg>"
  "dda37f4f942d644e9c72988be7984688")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SickLocResultPortPayloadMsg)))
  "Returns md5sum for a message object of type 'SickLocResultPortPayloadMsg"
  "dda37f4f942d644e9c72988be7984688")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SickLocResultPortPayloadMsg>)))
  "Returns full string definition for message of type '<SickLocResultPortPayloadMsg>"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortPayloadMsg.~%# SickLocResultPortPayloadMsg publishes the payload of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte~%uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte~%uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte~%int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte~%uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte~%int32  Reserved2      # Reserved. Size: Int32 = 4 byte~%uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte~%uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte~%int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte~%uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SickLocResultPortPayloadMsg)))
  "Returns full string definition for message of type 'SickLocResultPortPayloadMsg"
  (cl:format cl:nil "# Definition of ros message SickLocResultPortPayloadMsg.~%# SickLocResultPortPayloadMsg publishes the payload of a result port telegram~%# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")~%# of the operation manual for further details.~%~%uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte~%uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte~%uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte~%int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte~%int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte~%uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte~%int32  Reserved2      # Reserved. Size: Int32 = 4 byte~%uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte~%uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte~%int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte~%int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte~%uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SickLocResultPortPayloadMsg>))
  (cl:+ 0
     2
     4
     4
     4
     4
     4
     4
     4
     1
     1
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SickLocResultPortPayloadMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SickLocResultPortPayloadMsg
    (cl:cons ':ErrorCode (ErrorCode msg))
    (cl:cons ':ScanCounter (ScanCounter msg))
    (cl:cons ':Timestamp (Timestamp msg))
    (cl:cons ':PoseX (PoseX msg))
    (cl:cons ':PoseY (PoseY msg))
    (cl:cons ':PoseYaw (PoseYaw msg))
    (cl:cons ':Reserved1 (Reserved1 msg))
    (cl:cons ':Reserved2 (Reserved2 msg))
    (cl:cons ':Quality (Quality msg))
    (cl:cons ':OutliersRatio (OutliersRatio msg))
    (cl:cons ':CovarianceX (CovarianceX msg))
    (cl:cons ':CovarianceY (CovarianceY msg))
    (cl:cons ':CovarianceYaw (CovarianceYaw msg))
    (cl:cons ':Reserved3 (Reserved3 msg))
))
