;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocTimeSyncSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocTimeSyncSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCTIMESYNCSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCTIMESYNCSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCTIMESYNCSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCTIMESYNCSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCTIMESYNCSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCTIMESYNCSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocTimeSyncSrvRequest
  :super ros::object
  :slots (_timestamp_lidar_ms ))

(defmethod sick_lidar_localization::SickLocTimeSyncSrvRequest
  (:init
   (&key
    ((:timestamp_lidar_ms __timestamp_lidar_ms) 0)
    )
   (send-super :init)
   (setq _timestamp_lidar_ms (round __timestamp_lidar_ms))
   self)
  (:timestamp_lidar_ms
   (&optional __timestamp_lidar_ms)
   (if __timestamp_lidar_ms (setq _timestamp_lidar_ms __timestamp_lidar_ms)) _timestamp_lidar_ms)
  (:serialization-length
   ()
   (+
    ;; uint32 _timestamp_lidar_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _timestamp_lidar_ms
       (write-long _timestamp_lidar_ms s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _timestamp_lidar_ms
     (setq _timestamp_lidar_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocTimeSyncSrvResponse
  :super ros::object
  :slots (_vehicle_time_valid _vehicle_time_sec _vehicle_time_nsec ))

(defmethod sick_lidar_localization::SickLocTimeSyncSrvResponse
  (:init
   (&key
    ((:vehicle_time_valid __vehicle_time_valid) nil)
    ((:vehicle_time_sec __vehicle_time_sec) 0)
    ((:vehicle_time_nsec __vehicle_time_nsec) 0)
    )
   (send-super :init)
   (setq _vehicle_time_valid __vehicle_time_valid)
   (setq _vehicle_time_sec (round __vehicle_time_sec))
   (setq _vehicle_time_nsec (round __vehicle_time_nsec))
   self)
  (:vehicle_time_valid
   (&optional __vehicle_time_valid)
   (if __vehicle_time_valid (setq _vehicle_time_valid __vehicle_time_valid)) _vehicle_time_valid)
  (:vehicle_time_sec
   (&optional __vehicle_time_sec)
   (if __vehicle_time_sec (setq _vehicle_time_sec __vehicle_time_sec)) _vehicle_time_sec)
  (:vehicle_time_nsec
   (&optional __vehicle_time_nsec)
   (if __vehicle_time_nsec (setq _vehicle_time_nsec __vehicle_time_nsec)) _vehicle_time_nsec)
  (:serialization-length
   ()
   (+
    ;; bool _vehicle_time_valid
    1
    ;; uint32 _vehicle_time_sec
    4
    ;; uint32 _vehicle_time_nsec
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _vehicle_time_valid
       (if _vehicle_time_valid (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _vehicle_time_sec
       (write-long _vehicle_time_sec s)
     ;; uint32 _vehicle_time_nsec
       (write-long _vehicle_time_nsec s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _vehicle_time_valid
     (setq _vehicle_time_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _vehicle_time_sec
     (setq _vehicle_time_sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _vehicle_time_nsec
     (setq _vehicle_time_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocTimeSyncSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocTimeSyncSrv :md5sum-) "216ce2f222e12099ae0a51b3bd3cad26")
(setf (get sick_lidar_localization::SickLocTimeSyncSrv :datatype-) "sick_lidar_localization/SickLocTimeSyncSrv")
(setf (get sick_lidar_localization::SickLocTimeSyncSrv :request) sick_lidar_localization::SickLocTimeSyncSrvRequest)
(setf (get sick_lidar_localization::SickLocTimeSyncSrv :response) sick_lidar_localization::SickLocTimeSyncSrvResponse)

(defmethod sick_lidar_localization::SickLocTimeSyncSrvRequest
  (:response () (instance sick_lidar_localization::SickLocTimeSyncSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocTimeSyncSrvRequest :md5sum-) "216ce2f222e12099ae0a51b3bd3cad26")
(setf (get sick_lidar_localization::SickLocTimeSyncSrvRequest :datatype-) "sick_lidar_localization/SickLocTimeSyncSrvRequest")
(setf (get sick_lidar_localization::SickLocTimeSyncSrvRequest :definition-)
      "# Definition of ROS service SickLocTimeSync for sick localization.
#
# ROS service SickLocTimeSync returns the system time of a vehicle pose from lidar ticks in ms.
# SickLocTimeSync uses a software pll to calculate the system time from ticks. Therefore at least
# 7 LocRequestTimestamp measurements are required before time sync becomes valid (default fifo
# size of the software pll is 7 measurements). Depending on time_sync_rate configured in the
# launch-file, this initial phase can take several seconds (up to 70 seconds).

#
# Request (input): Timestamp in ticks
#

uint32 timestamp_lidar_ms  # Lidar timestamp in milliseconds from LocRequestTimestamp response

---

#
# Response (output): System time calculated by software pll
#

bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase
uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)
uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)

")

(setf (get sick_lidar_localization::SickLocTimeSyncSrvResponse :md5sum-) "216ce2f222e12099ae0a51b3bd3cad26")
(setf (get sick_lidar_localization::SickLocTimeSyncSrvResponse :datatype-) "sick_lidar_localization/SickLocTimeSyncSrvResponse")
(setf (get sick_lidar_localization::SickLocTimeSyncSrvResponse :definition-)
      "# Definition of ROS service SickLocTimeSync for sick localization.
#
# ROS service SickLocTimeSync returns the system time of a vehicle pose from lidar ticks in ms.
# SickLocTimeSync uses a software pll to calculate the system time from ticks. Therefore at least
# 7 LocRequestTimestamp measurements are required before time sync becomes valid (default fifo
# size of the software pll is 7 measurements). Depending on time_sync_rate configured in the
# launch-file, this initial phase can take several seconds (up to 70 seconds).

#
# Request (input): Timestamp in ticks
#

uint32 timestamp_lidar_ms  # Lidar timestamp in milliseconds from LocRequestTimestamp response

---

#
# Response (output): System time calculated by software pll
#

bool   vehicle_time_valid  # true: vehicle_time_sec and vehicle_time_nsec valid, false: software pll still in initial phase
uint32 vehicle_time_sec    # Time of vehicles pose calculated by software pll (seconds part of the system time)
uint32 vehicle_time_nsec   # Time of vehicles pose calculated by software pll (nano seconds part of the system time)

")



(provide :sick_lidar_localization/SickLocTimeSyncSrv "216ce2f222e12099ae0a51b3bd3cad26")


