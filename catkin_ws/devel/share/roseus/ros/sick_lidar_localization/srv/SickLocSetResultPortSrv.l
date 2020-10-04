;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocSetResultPortSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocSetResultPortSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPORTSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPORTSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPORTSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPORTSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPORTSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTPORTSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocSetResultPortSrvRequest
  :super ros::object
  :slots (_port ))

(defmethod sick_lidar_localization::SickLocSetResultPortSrvRequest
  (:init
   (&key
    ((:port __port) 0)
    )
   (send-super :init)
   (setq _port (round __port))
   self)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:serialization-length
   ()
   (+
    ;; int32 _port
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _port
       (write-long _port s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _port
     (setq _port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetResultPortSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocSetResultPortSrvResponse
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

(defclass sick_lidar_localization::SickLocSetResultPortSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocSetResultPortSrv :md5sum-) "22d338505934787b6445bcb45da196e0")
(setf (get sick_lidar_localization::SickLocSetResultPortSrv :datatype-) "sick_lidar_localization/SickLocSetResultPortSrv")
(setf (get sick_lidar_localization::SickLocSetResultPortSrv :request) sick_lidar_localization::SickLocSetResultPortSrvRequest)
(setf (get sick_lidar_localization::SickLocSetResultPortSrv :response) sick_lidar_localization::SickLocSetResultPortSrvResponse)

(defmethod sick_lidar_localization::SickLocSetResultPortSrvRequest
  (:response () (instance sick_lidar_localization::SickLocSetResultPortSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocSetResultPortSrvRequest :md5sum-) "22d338505934787b6445bcb45da196e0")
(setf (get sick_lidar_localization::SickLocSetResultPortSrvRequest :datatype-) "sick_lidar_localization/SickLocSetResultPortSrvRequest")
(setf (get sick_lidar_localization::SickLocSetResultPortSrvRequest :definition-)
      "# Definition of ROS service SickLocSetResultPort for sick localization.
#
# ROS service SickLocSetResultPort sets the TCP-port for result output telegrams
# by sending cola command (\"sMN LocSetResultPort <port>\")
# with parameter
# <port>: TCP-port for result output telegrams (default: 2201)
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 port # TCP-port for result output telegrams (default: 2201)

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocSetResultPortSrvResponse :md5sum-) "22d338505934787b6445bcb45da196e0")
(setf (get sick_lidar_localization::SickLocSetResultPortSrvResponse :datatype-) "sick_lidar_localization/SickLocSetResultPortSrvResponse")
(setf (get sick_lidar_localization::SickLocSetResultPortSrvResponse :definition-)
      "# Definition of ROS service SickLocSetResultPort for sick localization.
#
# ROS service SickLocSetResultPort sets the TCP-port for result output telegrams
# by sending cola command (\"sMN LocSetResultPort <port>\")
# with parameter
# <port>: TCP-port for result output telegrams (default: 2201)
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 port # TCP-port for result output telegrams (default: 2201)

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocSetResultPortSrv "22d338505934787b6445bcb45da196e0")


