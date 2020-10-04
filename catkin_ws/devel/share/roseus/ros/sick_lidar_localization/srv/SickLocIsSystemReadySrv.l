;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocIsSystemReadySrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocIsSystemReadySrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCISSYSTEMREADYSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCISSYSTEMREADYSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCISSYSTEMREADYSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCISSYSTEMREADYSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCISSYSTEMREADYSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCISSYSTEMREADYSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocIsSystemReadySrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocIsSystemReadySrvRequest
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

(defclass sick_lidar_localization::SickLocIsSystemReadySrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocIsSystemReadySrvResponse
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

(defclass sick_lidar_localization::SickLocIsSystemReadySrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocIsSystemReadySrv :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocIsSystemReadySrv :datatype-) "sick_lidar_localization/SickLocIsSystemReadySrv")
(setf (get sick_lidar_localization::SickLocIsSystemReadySrv :request) sick_lidar_localization::SickLocIsSystemReadySrvRequest)
(setf (get sick_lidar_localization::SickLocIsSystemReadySrv :response) sick_lidar_localization::SickLocIsSystemReadySrvResponse)

(defmethod sick_lidar_localization::SickLocIsSystemReadySrvRequest
  (:response () (instance sick_lidar_localization::SickLocIsSystemReadySrvResponse :init)))

(setf (get sick_lidar_localization::SickLocIsSystemReadySrvRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocIsSystemReadySrvRequest :datatype-) "sick_lidar_localization/SickLocIsSystemReadySrvRequest")
(setf (get sick_lidar_localization::SickLocIsSystemReadySrvRequest :definition-)
      "# Definition of ROS service SickLocIsSystemReady for sick localization.
#
# ROS service SickLocIsSystemReady check if the system is ready
# by sending cola command (\"sMN IsSystemReady\").
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

bool success # true: system ready response received from localization controller, false: system not ready or service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocIsSystemReadySrvResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get sick_lidar_localization::SickLocIsSystemReadySrvResponse :datatype-) "sick_lidar_localization/SickLocIsSystemReadySrvResponse")
(setf (get sick_lidar_localization::SickLocIsSystemReadySrvResponse :definition-)
      "# Definition of ROS service SickLocIsSystemReady for sick localization.
#
# ROS service SickLocIsSystemReady check if the system is ready
# by sending cola command (\"sMN IsSystemReady\").
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

bool success # true: system ready response received from localization controller, false: system not ready or service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocIsSystemReadySrv "358e233cde0c8a8bcfea4ce193f8fc15")


