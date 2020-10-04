;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocSetResultPoseIntervalSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocSetResultPoseIntervalSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEINTERVALSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEINTERVALSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEINTERVALSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEINTERVALSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEINTERVALSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEINTERVALSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest
  :super ros::object
  :slots (_interval ))

(defmethod sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest
  (:init
   (&key
    ((:interval __interval) 0)
    )
   (send-super :init)
   (setq _interval (round __interval))
   self)
  (:interval
   (&optional __interval)
   (if __interval (setq _interval __interval)) _interval)
  (:serialization-length
   ()
   (+
    ;; int32 _interval
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _interval
       (write-long _interval s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _interval
     (setq _interval (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetResultPoseIntervalSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrv :md5sum-) "dfed1807f9eafde8783e0a05f0ca7dce")
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrv :datatype-) "sick_lidar_localization/SickLocSetResultPoseIntervalSrv")
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrv :request) sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest)
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrv :response) sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse)

(defmethod sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest
  (:response () (instance sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest :md5sum-) "dfed1807f9eafde8783e0a05f0ca7dce")
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest :datatype-) "sick_lidar_localization/SickLocSetResultPoseIntervalSrvRequest")
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrvRequest :definition-)
      "# Definition of ROS service SickLocSetResultPoseInterval for sick localization.
#
# ROS service SickLocSetResultPoseInterval sets the interval of result output telegrams
# by sending cola command (\"sMN LocSetResultPoseInterval <interval>\")
# with parameter
# <interval>:  0-255, interval in number of scans, 1: result with each processed scan, default: 1
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 interval # interval in number of scans, 0-255, 1 (default): result with each processed scan

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse :md5sum-) "dfed1807f9eafde8783e0a05f0ca7dce")
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse :datatype-) "sick_lidar_localization/SickLocSetResultPoseIntervalSrvResponse")
(setf (get sick_lidar_localization::SickLocSetResultPoseIntervalSrvResponse :definition-)
      "# Definition of ROS service SickLocSetResultPoseInterval for sick localization.
#
# ROS service SickLocSetResultPoseInterval sets the interval of result output telegrams
# by sending cola command (\"sMN LocSetResultPoseInterval <interval>\")
# with parameter
# <interval>:  0-255, interval in number of scans, 1: result with each processed scan, default: 1
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 interval # interval in number of scans, 0-255, 1 (default): result with each processed scan

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocSetResultPoseIntervalSrv "dfed1807f9eafde8783e0a05f0ca7dce")


