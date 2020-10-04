;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocSetResultEndiannessSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocSetResultEndiannessSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTENDIANNESSSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTENDIANNESSSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTENDIANNESSSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTENDIANNESSSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTENDIANNESSSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETRESULTENDIANNESSSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocSetResultEndiannessSrvRequest
  :super ros::object
  :slots (_endianness ))

(defmethod sick_lidar_localization::SickLocSetResultEndiannessSrvRequest
  (:init
   (&key
    ((:endianness __endianness) 0)
    )
   (send-super :init)
   (setq _endianness (round __endianness))
   self)
  (:endianness
   (&optional __endianness)
   (if __endianness (setq _endianness __endianness)) _endianness)
  (:serialization-length
   ()
   (+
    ;; int32 _endianness
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _endianness
       (write-long _endianness s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _endianness
     (setq _endianness (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetResultEndiannessSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocSetResultEndiannessSrvResponse
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

(defclass sick_lidar_localization::SickLocSetResultEndiannessSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrv :md5sum-) "ad546145ccc5332dee356f4fbbf0ae49")
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrv :datatype-) "sick_lidar_localization/SickLocSetResultEndiannessSrv")
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrv :request) sick_lidar_localization::SickLocSetResultEndiannessSrvRequest)
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrv :response) sick_lidar_localization::SickLocSetResultEndiannessSrvResponse)

(defmethod sick_lidar_localization::SickLocSetResultEndiannessSrvRequest
  (:response () (instance sick_lidar_localization::SickLocSetResultEndiannessSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrvRequest :md5sum-) "ad546145ccc5332dee356f4fbbf0ae49")
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrvRequest :datatype-) "sick_lidar_localization/SickLocSetResultEndiannessSrvRequest")
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrvRequest :definition-)
      "# Definition of ROS service SickLocSetResultEndianness for sick localization.
#
# ROS service SickLocSetResultEndianness sets the endianness of the result output
# by sending cola command (\"sMN LocSetResultEndianness <endianness>\")
# with parameter
# <endianness>:  0: big endian, 1: little endian, default: big endian
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 endianness # 0: big endian, 1: little endian, default: big endian

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrvResponse :md5sum-) "ad546145ccc5332dee356f4fbbf0ae49")
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrvResponse :datatype-) "sick_lidar_localization/SickLocSetResultEndiannessSrvResponse")
(setf (get sick_lidar_localization::SickLocSetResultEndiannessSrvResponse :definition-)
      "# Definition of ROS service SickLocSetResultEndianness for sick localization.
#
# ROS service SickLocSetResultEndianness sets the endianness of the result output
# by sending cola command (\"sMN LocSetResultEndianness <endianness>\")
# with parameter
# <endianness>:  0: big endian, 1: little endian, default: big endian
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 endianness # 0: big endian, 1: little endian, default: big endian

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocSetResultEndiannessSrv "ad546145ccc5332dee356f4fbbf0ae49")


