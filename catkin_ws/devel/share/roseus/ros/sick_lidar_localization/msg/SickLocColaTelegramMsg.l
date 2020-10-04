;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocColaTelegramMsg)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocColaTelegramMsg (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMMSG")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMMSG"))

(in-package "ROS")
;;//! \htmlinclude SickLocColaTelegramMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sick_lidar_localization::SickLocColaTelegramMsg
  :super ros::object
  :slots (_header _command_type _command_name _parameter ))

(defmethod sick_lidar_localization::SickLocColaTelegramMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command_type __command_type) 0)
    ((:command_name __command_name) "")
    ((:parameter __parameter) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _command_type (round __command_type))
   (setq _command_name (string __command_name))
   (setq _parameter __parameter)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:command_name
   (&optional __command_name)
   (if __command_name (setq _command_name __command_name)) _command_name)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _command_type
    4
    ;; string _command_name
    4 (length _command_name)
    ;; string[] _parameter
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _parameter)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _command_type
       (write-long _command_type s)
     ;; string _command_name
       (write-long (length _command_name) s) (princ _command_name s)
     ;; string[] _parameter
     (write-long (length _parameter) s)
     (dolist (elem _parameter)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _command_type
     (setq _command_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _parameter
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameter (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _parameter i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get sick_lidar_localization::SickLocColaTelegramMsg :md5sum-) "fda058e73f190c37b2ae74d5f8aa66d7")
(setf (get sick_lidar_localization::SickLocColaTelegramMsg :datatype-) "sick_lidar_localization/SickLocColaTelegramMsg")
(setf (get sick_lidar_localization::SickLocColaTelegramMsg :definition-)
      "# Definition of ros message SickLocColaTelegramMsg.
# SickLocColaTelegramMsg publishes Cola-ASCII telegrams for sick localization.
# See Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.PDF for further details
# about Cola telgrams

Header header        # ROS Header with sequence id, timestamp and frame id

int32 command_type   # One of the SOPAS Commands sRN (1, Read by name request) or sRA (2, Read by name response) or sMN (3, Method by name request) or sMA (4, Method by name response) or sWN (5, Write by name request)

string command_name  # Name of command like \"SetAccessMode\", \"LocSetResultPoseEnabled\", \"LocRequestTimestamp\", etc.

string[] parameter   # Optional parameter, type and number parameter depend on the command, f.e. \"sMN SetAccessMode 3 F4724744\" with 2 parameter

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sick_lidar_localization/SickLocColaTelegramMsg "fda058e73f190c37b2ae74d5f8aa66d7")


