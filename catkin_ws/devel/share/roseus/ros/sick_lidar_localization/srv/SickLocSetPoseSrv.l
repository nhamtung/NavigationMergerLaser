;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocSetPoseSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocSetPoseSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETPOSESRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETPOSESRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETPOSESRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETPOSESRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETPOSESRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCSETPOSESRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocSetPoseSrvRequest
  :super ros::object
  :slots (_posex _posey _yaw _uncertainty ))

(defmethod sick_lidar_localization::SickLocSetPoseSrvRequest
  (:init
   (&key
    ((:posex __posex) 0)
    ((:posey __posey) 0)
    ((:yaw __yaw) 0)
    ((:uncertainty __uncertainty) 0)
    )
   (send-super :init)
   (setq _posex (round __posex))
   (setq _posey (round __posey))
   (setq _yaw (round __yaw))
   (setq _uncertainty (round __uncertainty))
   self)
  (:posex
   (&optional __posex)
   (if __posex (setq _posex __posex)) _posex)
  (:posey
   (&optional __posey)
   (if __posey (setq _posey __posey)) _posey)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:uncertainty
   (&optional __uncertainty)
   (if __uncertainty (setq _uncertainty __uncertainty)) _uncertainty)
  (:serialization-length
   ()
   (+
    ;; int32 _posex
    4
    ;; int32 _posey
    4
    ;; int32 _yaw
    4
    ;; int32 _uncertainty
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _posex
       (write-long _posex s)
     ;; int32 _posey
       (write-long _posey s)
     ;; int32 _yaw
       (write-long _yaw s)
     ;; int32 _uncertainty
       (write-long _uncertainty s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _posex
     (setq _posex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _posey
     (setq _posey (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yaw
     (setq _yaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _uncertainty
     (setq _uncertainty (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocSetPoseSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod sick_lidar_localization::SickLocSetPoseSrvResponse
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

(defclass sick_lidar_localization::SickLocSetPoseSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocSetPoseSrv :md5sum-) "11bcade26cc02b7bbcb448a2abedd38e")
(setf (get sick_lidar_localization::SickLocSetPoseSrv :datatype-) "sick_lidar_localization/SickLocSetPoseSrv")
(setf (get sick_lidar_localization::SickLocSetPoseSrv :request) sick_lidar_localization::SickLocSetPoseSrvRequest)
(setf (get sick_lidar_localization::SickLocSetPoseSrv :response) sick_lidar_localization::SickLocSetPoseSrvResponse)

(defmethod sick_lidar_localization::SickLocSetPoseSrvRequest
  (:response () (instance sick_lidar_localization::SickLocSetPoseSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocSetPoseSrvRequest :md5sum-) "11bcade26cc02b7bbcb448a2abedd38e")
(setf (get sick_lidar_localization::SickLocSetPoseSrvRequest :datatype-) "sick_lidar_localization/SickLocSetPoseSrvRequest")
(setf (get sick_lidar_localization::SickLocSetPoseSrvRequest :definition-)
      "# Definition of ROS service SickLocSetPose for sick localization.
#
# ROS service SickLocSetPose initializes the vehicle pose
# by sending cola command (\"sMN LocSetPose <posex> <posey> <yaw> <uncertainty>\")
# with parameter
# <posex>: x coordinate in mm
# <posey>: y coordinate in mm
# <yaw>: yaw angle in millidegree, -180000 to +180000
# <uncertainty>: translation uncertainty in mm
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 posex       # x coordinate in mm
int32 posey       # y coordinate in mm
int32 yaw         # yaw angle in millidegree, -180000 to +180000
int32 uncertainty # translation uncertainty in mm

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")

(setf (get sick_lidar_localization::SickLocSetPoseSrvResponse :md5sum-) "11bcade26cc02b7bbcb448a2abedd38e")
(setf (get sick_lidar_localization::SickLocSetPoseSrvResponse :datatype-) "sick_lidar_localization/SickLocSetPoseSrvResponse")
(setf (get sick_lidar_localization::SickLocSetPoseSrvResponse :definition-)
      "# Definition of ROS service SickLocSetPose for sick localization.
#
# ROS service SickLocSetPose initializes the vehicle pose
# by sending cola command (\"sMN LocSetPose <posex> <posey> <yaw> <uncertainty>\")
# with parameter
# <posex>: x coordinate in mm
# <posey>: y coordinate in mm
# <yaw>: yaw angle in millidegree, -180000 to +180000
# <uncertainty>: translation uncertainty in mm
#
# See Telegram-Listing-v1.1.0.241R.pdf for further details about 
# Cola telegrams and this command.

#
# Request (input)
#

int32 posex       # x coordinate in mm
int32 posey       # y coordinate in mm
int32 yaw         # yaw angle in millidegree, -180000 to +180000
int32 uncertainty # translation uncertainty in mm

---

#
# Response (output)
#

bool success # true: success response received from localization controller, false: service failed (timeout or error status from controller)


")



(provide :sick_lidar_localization/SickLocSetPoseSrv "11bcade26cc02b7bbcb448a2abedd38e")


