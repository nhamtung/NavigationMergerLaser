;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocRequestResultDataSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocRequestResultDataSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTRESULTDATASRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTRESULTDATASRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTRESULTDATASRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTRESULTDATASRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTRESULTDATASRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTRESULTDATASRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocRequestResultDataSrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocRequestResultDataSrvRequest
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

(defclass sick_lidar_localization::SickLocRequestResultDataSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocRequestResultDataSrvResponse
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

(defclass sick_lidar_localization::SickLocRequestResultDataSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocRequestResultDataSrv :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocRequestResultDataSrv :datatype-) "sick_lidar_localization/SickLocRequestResultDataSrv")
(setf (get sick_lidar_localization::SickLocRequestResultDataSrv :request) sick_lidar_localization::SickLocRequestResultDataSrvRequest)
(setf (get sick_lidar_localization::SickLocRequestResultDataSrv :response) sick_lidar_localization::SickLocRequestResultDataSrvResponse)

(defmethod sick_lidar_localization::SickLocRequestResultDataSrvRequest
  (:response () (instance sick_lidar_localization::SickLocRequestResultDataSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocRequestResultDataSrvRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocRequestResultDataSrvRequest :datatype-) "sick_lidar_localization/SickLocRequestResultDataSrvRequest")
(setf (get sick_lidar_localization::SickLocRequestResultDataSrvRequest :definition-)
      "# Definition of ROS service SickLocRequestResultData for sick localization.
#
# If in poll mode, ROS service SickLocRequestResultData triggers sending the localization result of the next processed scan via TCP interface
# by sending cola command (\"sMN LocRequestResultData\").
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

(setf (get sick_lidar_localization::SickLocRequestResultDataSrvResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocRequestResultDataSrvResponse :datatype-) "sick_lidar_localization/SickLocRequestResultDataSrvResponse")
(setf (get sick_lidar_localization::SickLocRequestResultDataSrvResponse :definition-)
      "# Definition of ROS service SickLocRequestResultData for sick localization.
#
# If in poll mode, ROS service SickLocRequestResultData triggers sending the localization result of the next processed scan via TCP interface
# by sending cola command (\"sMN LocRequestResultData\").
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



(provide :sick_lidar_localization/SickLocRequestResultDataSrv "358e233cde0c8a8bcfea4ce193f8fc15")


