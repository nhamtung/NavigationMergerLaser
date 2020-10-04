;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocStopAndSaveSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocStopAndSaveSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPANDSAVESRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPANDSAVESRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPANDSAVESRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPANDSAVESRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPANDSAVESRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTOPANDSAVESRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocStopAndSaveSrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocStopAndSaveSrvRequest
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

(defclass sick_lidar_localization::SickLocStopAndSaveSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocStopAndSaveSrvResponse
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

(defclass sick_lidar_localization::SickLocStopAndSaveSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocStopAndSaveSrv :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStopAndSaveSrv :datatype-) "sick_lidar_localization/SickLocStopAndSaveSrv")
(setf (get sick_lidar_localization::SickLocStopAndSaveSrv :request) sick_lidar_localization::SickLocStopAndSaveSrvRequest)
(setf (get sick_lidar_localization::SickLocStopAndSaveSrv :response) sick_lidar_localization::SickLocStopAndSaveSrvResponse)

(defmethod sick_lidar_localization::SickLocStopAndSaveSrvRequest
  (:response () (instance sick_lidar_localization::SickLocStopAndSaveSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocStopAndSaveSrvRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStopAndSaveSrvRequest :datatype-) "sick_lidar_localization/SickLocStopAndSaveSrvRequest")
(setf (get sick_lidar_localization::SickLocStopAndSaveSrvRequest :definition-)
      "# Definition of ROS service SickLocStopAndSave for sick localization.
#
# ROS service SickLocStopAndSave stops localization and saves settings
# by sending cola command (\"sMN LocStopAndSave\").
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

(setf (get sick_lidar_localization::SickLocStopAndSaveSrvResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStopAndSaveSrvResponse :datatype-) "sick_lidar_localization/SickLocStopAndSaveSrvResponse")
(setf (get sick_lidar_localization::SickLocStopAndSaveSrvResponse :definition-)
      "# Definition of ROS service SickLocStopAndSave for sick localization.
#
# ROS service SickLocStopAndSave stops localization and saves settings
# by sending cola command (\"sMN LocStopAndSave\").
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



(provide :sick_lidar_localization/SickLocStopAndSaveSrv "358e233cde0c8a8bcfea4ce193f8fc15")


