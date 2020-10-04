;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocStateSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocStateSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTATESRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTATESRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTATESRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTATESRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTATESRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSTATESRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocStateSrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocStateSrvRequest
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

(defclass sick_lidar_localization::SickLocStateSrvResponse
  :super ros::object
  :slots (_state _success ))

(defmethod sick_lidar_localization::SickLocStateSrvResponse
  (:init
   (&key
    ((:state __state) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _success __success)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocStateSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocStateSrv :md5sum-) "112e7992c0a1025af8b2c1b11d515e09")
(setf (get sick_lidar_localization::SickLocStateSrv :datatype-) "sick_lidar_localization/SickLocStateSrv")
(setf (get sick_lidar_localization::SickLocStateSrv :request) sick_lidar_localization::SickLocStateSrvRequest)
(setf (get sick_lidar_localization::SickLocStateSrv :response) sick_lidar_localization::SickLocStateSrvResponse)

(defmethod sick_lidar_localization::SickLocStateSrvRequest
  (:response () (instance sick_lidar_localization::SickLocStateSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocStateSrvRequest :md5sum-) "112e7992c0a1025af8b2c1b11d515e09")
(setf (get sick_lidar_localization::SickLocStateSrvRequest :datatype-) "sick_lidar_localization/SickLocStateSrvRequest")
(setf (get sick_lidar_localization::SickLocStateSrvRequest :definition-)
      "# Definition of ROS service SickLocState for sick localization.
#
# ROS service SickLocState read localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)
# by sending cola command  (\"sRN LocState\").
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

int32 state  # localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)
bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocStateSrvResponse :md5sum-) "112e7992c0a1025af8b2c1b11d515e09")
(setf (get sick_lidar_localization::SickLocStateSrvResponse :datatype-) "sick_lidar_localization/SickLocStateSrvResponse")
(setf (get sick_lidar_localization::SickLocStateSrvResponse :definition-)
      "# Definition of ROS service SickLocState for sick localization.
#
# ROS service SickLocState read localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)
# by sending cola command  (\"sRN LocState\").
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

int32 state  # localization state (0:BOOTING, 1:IDLE, 2:LOCALIZING, 3:DEMO_MAPPING)
bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocStateSrv "112e7992c0a1025af8b2c1b11d515e09")


