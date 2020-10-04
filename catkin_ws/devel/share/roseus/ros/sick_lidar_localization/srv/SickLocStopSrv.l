;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocStopSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocStopSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocStopSrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocStopSrvRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocStopSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocStopSrvResponse
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

(defclass sick_lidar_localization::SickLocStopSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocStopSrv :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStopSrv :datatype-) "sick_lidar_localization/SickLocStopSrv")
(setf (get sick_lidar_localization::SickLocStopSrv :request) sick_lidar_localization::SickLocStopSrvRequest)
(setf (get sick_lidar_localization::SickLocStopSrv :response) sick_lidar_localization::SickLocStopSrvResponse)

(defmethod sick_lidar_localization::SickLocStopSrvRequest
  (:response () (instance sick_lidar_localization::SickLocStopSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocStopSrvRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStopSrvRequest :datatype-) "sick_lidar_localization/SickLocStopSrvRequest")
(setf (get sick_lidar_localization::SickLocStopSrvRequest :definition-)
      "# Definition of ROS service SickLocStop for sick localization.
#
# ROS service SickLocStopAndSave stops localization
# by sending cola command (\"sMN LocStop\").
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about
# Cola telegrams and this command.

#
# Request (input)
#

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocStopSrvResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStopSrvResponse :datatype-) "sick_lidar_localization/SickLocStopSrvResponse")
(setf (get sick_lidar_localization::SickLocStopSrvResponse :definition-)
      "# Definition of ROS service SickLocStop for sick localization.
#
# ROS service SickLocStopAndSave stops localization
# by sending cola command (\"sMN LocStop\").
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about
# Cola telegrams and this command.

#
# Request (input)
#

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocStopSrv "358e233cde0c8a8bcfea4ce193f8fc15")


