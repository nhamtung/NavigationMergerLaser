;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocSetResultModeSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocSetResultModeSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTMODESRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTMODESRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTMODESRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTMODESRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTMODESRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTMODESRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocSetResultModeSrvRequest
  :super ros::object
  :slots (_mode ))

(defmethod sick_lidar_localization::SickLocSetResultModeSrvRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetResultModeSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocSetResultModeSrvResponse
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

(defclass sick_lidar_localization::SickLocSetResultModeSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocSetResultModeSrv :md5sum-) "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(setf (get sick_lidar_localization::SickLocSetResultModeSrv :datatype-) "sick_lidar_localization/SickLocSetResultModeSrv")
(setf (get sick_lidar_localization::SickLocSetResultModeSrv :request) sick_lidar_localization::SickLocSetResultModeSrvRequest)
(setf (get sick_lidar_localization::SickLocSetResultModeSrv :response) sick_lidar_localization::SickLocSetResultModeSrvResponse)

(defmethod sick_lidar_localization::SickLocSetResultModeSrvRequest
  (:response () (instance sick_lidar_localization::SickLocSetResultModeSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocSetResultModeSrvRequest :md5sum-) "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(setf (get sick_lidar_localization::SickLocSetResultModeSrvRequest :datatype-) "sick_lidar_localization/SickLocSetResultModeSrvRequest")
(setf (get sick_lidar_localization::SickLocSetResultModeSrvRequest :definition-)
      "# Definition of ROS service SickLocSetResultMode for sick localization.
#
# ROS service SickLocSetResultMode sets the mode of the result output (stream or poll)
# by sending cola command (\"sMN LocSetResultMode <mode>\")
# with parameter
# <mode>: 0:stream, 1: poll, default: stream
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 mode # 0:stream, 1: poll, default: stream

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocSetResultModeSrvResponse :md5sum-) "46e3fbb42467cdb3ed60e9a1d6e7dbc3")
(setf (get sick_lidar_localization::SickLocSetResultModeSrvResponse :datatype-) "sick_lidar_localization/SickLocSetResultModeSrvResponse")
(setf (get sick_lidar_localization::SickLocSetResultModeSrvResponse :definition-)
      "# Definition of ROS service SickLocSetResultMode for sick localization.
#
# ROS service SickLocSetResultMode sets the mode of the result output (stream or poll)
# by sending cola command (\"sMN LocSetResultMode <mode>\")
# with parameter
# <mode>: 0:stream, 1: poll, default: stream
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 mode # 0:stream, 1: poll, default: stream

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocSetResultModeSrv "46e3fbb42467cdb3ed60e9a1d6e7dbc3")


