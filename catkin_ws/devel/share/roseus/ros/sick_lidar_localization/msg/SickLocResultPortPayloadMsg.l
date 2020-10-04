;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocResultPortPayloadMsg)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocResultPortPayloadMsg (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTPAYLOADMSG")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTPAYLOADMSG"))

(in-package "ROS")
;;//! \htmlinclude SickLocResultPortPayloadMsg.msg.html


(defclass sick_lidar_localization::SickLocResultPortPayloadMsg
  :super ros::object
  :slots (_ErrorCode _ScanCounter _Timestamp _PoseX _PoseY _PoseYaw _Reserved1 _Reserved2 _Quality _OutliersRatio _CovarianceX _CovarianceY _CovarianceYaw _Reserved3 ))

(defmethod sick_lidar_localization::SickLocResultPortPayloadMsg
  (:init
   (&key
    ((:ErrorCode __ErrorCode) 0)
    ((:ScanCounter __ScanCounter) 0)
    ((:Timestamp __Timestamp) 0)
    ((:PoseX __PoseX) 0)
    ((:PoseY __PoseY) 0)
    ((:PoseYaw __PoseYaw) 0)
    ((:Reserved1 __Reserved1) 0)
    ((:Reserved2 __Reserved2) 0)
    ((:Quality __Quality) 0)
    ((:OutliersRatio __OutliersRatio) 0)
    ((:CovarianceX __CovarianceX) 0)
    ((:CovarianceY __CovarianceY) 0)
    ((:CovarianceYaw __CovarianceYaw) 0)
    ((:Reserved3 __Reserved3) 0)
    )
   (send-super :init)
   (setq _ErrorCode (round __ErrorCode))
   (setq _ScanCounter (round __ScanCounter))
   (setq _Timestamp (round __Timestamp))
   (setq _PoseX (round __PoseX))
   (setq _PoseY (round __PoseY))
   (setq _PoseYaw (round __PoseYaw))
   (setq _Reserved1 (round __Reserved1))
   (setq _Reserved2 (round __Reserved2))
   (setq _Quality (round __Quality))
   (setq _OutliersRatio (round __OutliersRatio))
   (setq _CovarianceX (round __CovarianceX))
   (setq _CovarianceY (round __CovarianceY))
   (setq _CovarianceYaw (round __CovarianceYaw))
   (setq _Reserved3 (round __Reserved3))
   self)
  (:ErrorCode
   (&optional __ErrorCode)
   (if __ErrorCode (setq _ErrorCode __ErrorCode)) _ErrorCode)
  (:ScanCounter
   (&optional __ScanCounter)
   (if __ScanCounter (setq _ScanCounter __ScanCounter)) _ScanCounter)
  (:Timestamp
   (&optional __Timestamp)
   (if __Timestamp (setq _Timestamp __Timestamp)) _Timestamp)
  (:PoseX
   (&optional __PoseX)
   (if __PoseX (setq _PoseX __PoseX)) _PoseX)
  (:PoseY
   (&optional __PoseY)
   (if __PoseY (setq _PoseY __PoseY)) _PoseY)
  (:PoseYaw
   (&optional __PoseYaw)
   (if __PoseYaw (setq _PoseYaw __PoseYaw)) _PoseYaw)
  (:Reserved1
   (&optional __Reserved1)
   (if __Reserved1 (setq _Reserved1 __Reserved1)) _Reserved1)
  (:Reserved2
   (&optional __Reserved2)
   (if __Reserved2 (setq _Reserved2 __Reserved2)) _Reserved2)
  (:Quality
   (&optional __Quality)
   (if __Quality (setq _Quality __Quality)) _Quality)
  (:OutliersRatio
   (&optional __OutliersRatio)
   (if __OutliersRatio (setq _OutliersRatio __OutliersRatio)) _OutliersRatio)
  (:CovarianceX
   (&optional __CovarianceX)
   (if __CovarianceX (setq _CovarianceX __CovarianceX)) _CovarianceX)
  (:CovarianceY
   (&optional __CovarianceY)
   (if __CovarianceY (setq _CovarianceY __CovarianceY)) _CovarianceY)
  (:CovarianceYaw
   (&optional __CovarianceYaw)
   (if __CovarianceYaw (setq _CovarianceYaw __CovarianceYaw)) _CovarianceYaw)
  (:Reserved3
   (&optional __Reserved3)
   (if __Reserved3 (setq _Reserved3 __Reserved3)) _Reserved3)
  (:serialization-length
   ()
   (+
    ;; uint16 _ErrorCode
    2
    ;; uint32 _ScanCounter
    4
    ;; uint32 _Timestamp
    4
    ;; int32 _PoseX
    4
    ;; int32 _PoseY
    4
    ;; int32 _PoseYaw
    4
    ;; uint32 _Reserved1
    4
    ;; int32 _Reserved2
    4
    ;; uint8 _Quality
    1
    ;; uint8 _OutliersRatio
    1
    ;; int32 _CovarianceX
    4
    ;; int32 _CovarianceY
    4
    ;; int32 _CovarianceYaw
    4
    ;; uint64 _Reserved3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _ErrorCode
       (write-word _ErrorCode s)
     ;; uint32 _ScanCounter
       (write-long _ScanCounter s)
     ;; uint32 _Timestamp
       (write-long _Timestamp s)
     ;; int32 _PoseX
       (write-long _PoseX s)
     ;; int32 _PoseY
       (write-long _PoseY s)
     ;; int32 _PoseYaw
       (write-long _PoseYaw s)
     ;; uint32 _Reserved1
       (write-long _Reserved1 s)
     ;; int32 _Reserved2
       (write-long _Reserved2 s)
     ;; uint8 _Quality
       (write-byte _Quality s)
     ;; uint8 _OutliersRatio
       (write-byte _OutliersRatio s)
     ;; int32 _CovarianceX
       (write-long _CovarianceX s)
     ;; int32 _CovarianceY
       (write-long _CovarianceY s)
     ;; int32 _CovarianceYaw
       (write-long _CovarianceYaw s)
     ;; uint64 _Reserved3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Reserved3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Reserved3) (= (length (_Reserved3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Reserved3 . bv) 0) 0) s)
              (write-long (ash (elt (_Reserved3 . bv) 1) -1) s))
             ((and (class _Reserved3) (= (length (_Reserved3 . bv)) 1)) ;; big1
              (write-long (elt (_Reserved3 . bv) 0) s)
              (write-long (if (>= _Reserved3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Reserved3 s)(write-long (if (>= _Reserved3 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _ErrorCode
     (setq _ErrorCode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _ScanCounter
     (setq _ScanCounter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _Timestamp
     (setq _Timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PoseX
     (setq _PoseX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PoseY
     (setq _PoseY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PoseYaw
     (setq _PoseYaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _Reserved1
     (setq _Reserved1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Reserved2
     (setq _Reserved2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _Quality
     (setq _Quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _OutliersRatio
     (setq _OutliersRatio (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _CovarianceX
     (setq _CovarianceX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _CovarianceY
     (setq _CovarianceY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _CovarianceYaw
     (setq _CovarianceYaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _Reserved3
     
#+(or :alpha :irix6 :x86_64)
      (setf _Reserved3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Reserved3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get sick_lidar_localization::SickLocResultPortPayloadMsg :md5sum-) "dda37f4f942d644e9c72988be7984688")
(setf (get sick_lidar_localization::SickLocResultPortPayloadMsg :datatype-) "sick_lidar_localization/SickLocResultPortPayloadMsg")
(setf (get sick_lidar_localization::SickLocResultPortPayloadMsg :definition-)
      "# Definition of ros message SickLocResultPortPayloadMsg.
# SickLocResultPortPayloadMsg publishes the payload of a result port telegram
# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")
# of the operation manual for further details.

uint16 ErrorCode      # ErrorCode 0: OK, ErrorCode 1: UNKNOWNERROR. Size: UInt16 = 2 byte
uint32 ScanCounter    # Counter of related scan data. Size: UInt32 = 4 byte
uint32 Timestamp      # Time stamp of the pose [ms]. The time stamp indicates the time at which the pose is calculated. Size: UInt32 = 4 byte
int32  PoseX          # Position X of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte
int32  PoseY          # Position Y of the vehicle on the map in cartesian global coordinates [mm]. Size: Int32 = 4 byte
int32  PoseYaw        # Orientation (yaw) of the vehicle on the map [mdeg] Size: Int32 = 4 byte
uint32 Reserved1      # Reserved. Size: UInt32 = 4 byte
int32  Reserved2      # Reserved. Size: Int32 = 4 byte
uint8  Quality        # Quality of pose [0 … 100], 1 = bad pose quality, 100 = good pose quality. Size: UInt8 = 1 byte
uint8  OutliersRatio  # Ratio of beams that cannot be assigned to the current reference map [%]. Size: UInt8 = 1 byte
int32  CovarianceX    # Covariance c1 of the pose X [mm^2]. Size: Int32 = 4 byte
int32  CovarianceY    # Covariance c5 of the pose Y [mm^2]. Size: Int32 = 4 byte
int32  CovarianceYaw  # Covariance c9 of the pose Yaw [mdeg^2]. Size: Int32 = 4 byte
uint64 Reserved3      # Reserved. Size: UInt64 = 8 byte


")



(provide :sick_lidar_localization/SickLocResultPortPayloadMsg "dda37f4f942d644e9c72988be7984688")


