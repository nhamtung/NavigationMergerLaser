;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocDiagnosticMsg)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocDiagnosticMsg (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCDIAGNOSTICMSG")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCDIAGNOSTICMSG"))

(in-package "ROS")
;;//! \htmlinclude SickLocDiagnosticMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sick_lidar_localization::SickLocDiagnosticMsg
  :super ros::object
  :slots (_header _error_code _message ))

(defmethod sick_lidar_localization::SickLocDiagnosticMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _error_code
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sick_lidar_localization::SickLocDiagnosticMsg :md5sum-) "c51f3a40db1be5dd1e9301b7d3362c8d")
(setf (get sick_lidar_localization::SickLocDiagnosticMsg :datatype-) "sick_lidar_localization/SickLocDiagnosticMsg")
(setf (get sick_lidar_localization::SickLocDiagnosticMsg :definition-)
      "# Definition of ros message SickLocDiagnosticMsg.
# SickLocDiagnosticMsg publishes diagnostic messages
# of the sick localization driver.

Header header      # ROS Header with sequence id, timestamp and frame id
int32  error_code  # error code (0 := no error)
string message     # diagnostic message

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



(provide :sick_lidar_localization/SickLocDiagnosticMsg "c51f3a40db1be5dd1e9301b7d3362c8d")


