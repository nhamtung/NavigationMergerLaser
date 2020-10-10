;; Auto-generated. Do not edit!


(when (boundp 'driver_blvd_controller::MLS_Measurement)
  (if (not (find-package "DRIVER_BLVD_CONTROLLER"))
    (make-package "DRIVER_BLVD_CONTROLLER"))
  (shadow 'MLS_Measurement (find-package "DRIVER_BLVD_CONTROLLER")))
(unless (find-package "DRIVER_BLVD_CONTROLLER::MLS_MEASUREMENT")
  (make-package "DRIVER_BLVD_CONTROLLER::MLS_MEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude MLS_Measurement.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass driver_blvd_controller::MLS_Measurement
  :super ros::object
  :slots (_header _position _lcp _status _error ))

(defmethod driver_blvd_controller::MLS_Measurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lcp __lcp) 0)
    ((:status __status) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _lcp (round __lcp))
   (setq _status (round __status))
   (setq _error (round __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:lcp
   (&optional __lcp)
   (if __lcp (setq _lcp __lcp)) _lcp)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; uint8 _lcp
    1
    ;; uint8 _status
    1
    ;; uint8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _lcp
       (write-byte _lcp s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _lcp
     (setq _lcp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get driver_blvd_controller::MLS_Measurement :md5sum-) "294c7b9c3028152b491bf17d4eb40177")
(setf (get driver_blvd_controller::MLS_Measurement :datatype-) "driver_blvd_controller/MLS_Measurement")
(setf (get driver_blvd_controller::MLS_Measurement :definition-)
      "# MLS_Measurement.msg defines a single measurement of a SICK MLS.
# See operation instructions for details (www.sick.com/mls).
#

# Header with sequence id, timestamp of the measurement and frame id 
Header header

# Array of measured positions for up to 3 lines.
# Each position is the distance to the center of a line (line center point) in meter.
# More than one line is detected in case of junctions.
float32[] position      # distance to the line center point [m]

# LCP-flags (signs and line assignment)
uint8 lcp               # flags (signs and assignment, see chap. 8 of operation instructions)

# Detection status
uint8 status            # status (see chap. 8 of operation instructions)

# Error register
uint8 error             # error register (0x1001, value 0 = okay, see chap. 8 of operation instructions)

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



(provide :driver_blvd_controller/MLS_Measurement "294c7b9c3028152b491bf17d4eb40177")


