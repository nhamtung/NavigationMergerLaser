;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocStartLocalizingSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocStartLocalizingSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTARTLOCALIZINGSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTARTLOCALIZINGSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTARTLOCALIZINGSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTARTLOCALIZINGSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTARTLOCALIZINGSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTARTLOCALIZINGSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocStartLocalizingSrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocStartLocalizingSrvRequest
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

(defclass sick_lidar_localization::SickLocStartLocalizingSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocStartLocalizingSrvResponse
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

(defclass sick_lidar_localization::SickLocStartLocalizingSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocStartLocalizingSrv :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStartLocalizingSrv :datatype-) "sick_lidar_localization/SickLocStartLocalizingSrv")
(setf (get sick_lidar_localization::SickLocStartLocalizingSrv :request) sick_lidar_localization::SickLocStartLocalizingSrvRequest)
(setf (get sick_lidar_localization::SickLocStartLocalizingSrv :response) sick_lidar_localization::SickLocStartLocalizingSrvResponse)

(defmethod sick_lidar_localization::SickLocStartLocalizingSrvRequest
  (:response () (instance sick_lidar_localization::SickLocStartLocalizingSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocStartLocalizingSrvRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStartLocalizingSrvRequest :datatype-) "sick_lidar_localization/SickLocStartLocalizingSrvRequest")
(setf (get sick_lidar_localization::SickLocStartLocalizingSrvRequest :definition-)
      "# Definition of ROS service SickLocStartLocalizing for sick localization.
#
# ROS service SickLocStartLocalizing starts localization
# by sending cola command (\"sMN LocStartLocalizing\").
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

bool success # true: success response received from localization controller (localization started), false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocStartLocalizingSrvResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocStartLocalizingSrvResponse :datatype-) "sick_lidar_localization/SickLocStartLocalizingSrvResponse")
(setf (get sick_lidar_localization::SickLocStartLocalizingSrvResponse :definition-)
      "# Definition of ROS service SickLocStartLocalizing for sick localization.
#
# ROS service SickLocStartLocalizing starts localization
# by sending cola command (\"sMN LocStartLocalizing\").
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

bool success # true: success response received from localization controller (localization started), false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocStartLocalizingSrv "358e233cde0c8a8bcfea4ce193f8fc15")


