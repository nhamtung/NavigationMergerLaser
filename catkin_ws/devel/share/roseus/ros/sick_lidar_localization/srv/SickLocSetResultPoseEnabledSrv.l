;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocSetResultPoseEnabledSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocSetResultPoseEnabledSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEENABLEDSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEENABLEDSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEENABLEDSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEENABLEDSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEENABLEDSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPOSEENABLEDSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest
  :super ros::object
  :slots (_enabled ))

(defmethod sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest
  (:init
   (&key
    ((:enabled __enabled) 0)
    )
   (send-super :init)
   (setq _enabled (round __enabled))
   self)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; int32 _enabled
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _enabled
       (write-long _enabled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _enabled
     (setq _enabled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse
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

(defclass sick_lidar_localization::SickLocSetResultPoseEnabledSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrv :md5sum-) "1f66c3fbfa9f51fd9331860303d68bcc")
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrv :datatype-) "sick_lidar_localization/SickLocSetResultPoseEnabledSrv")
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrv :request) sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest)
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrv :response) sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse)

(defmethod sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest
  (:response () (instance sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest :md5sum-) "1f66c3fbfa9f51fd9331860303d68bcc")
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest :datatype-) "sick_lidar_localization/SickLocSetResultPoseEnabledSrvRequest")
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrvRequest :definition-)
      "# Definition of ROS service SickLocSetResultPoseEnabled for sick localization.
#
# ROS service SickLocSetResultPoseEnabled enables or disables result output telegrams
# by sending cola command (\"sMN LocSetResultPoseEnabled <enabled>\")
# with parameter
# <enabled>: 0: disabled, 1: enabled, default: enabled
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 enabled # 0: result output disabled, result output 1: enabled, default: enabled

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse :md5sum-) "1f66c3fbfa9f51fd9331860303d68bcc")
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse :datatype-) "sick_lidar_localization/SickLocSetResultPoseEnabledSrvResponse")
(setf (get sick_lidar_localization::SickLocSetResultPoseEnabledSrvResponse :definition-)
      "# Definition of ROS service SickLocSetResultPoseEnabled for sick localization.
#
# ROS service SickLocSetResultPoseEnabled enables or disables result output telegrams
# by sending cola command (\"sMN LocSetResultPoseEnabled <enabled>\")
# with parameter
# <enabled>: 0: disabled, 1: enabled, default: enabled
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 enabled # 0: result output disabled, result output 1: enabled, default: enabled

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocSetResultPoseEnabledSrv "1f66c3fbfa9f51fd9331860303d68bcc")


