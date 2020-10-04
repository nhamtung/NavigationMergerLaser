;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocRequestTimestampSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocRequestTimestampSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTTIMESTAMPSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTTIMESTAMPSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTTIMESTAMPSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTTIMESTAMPSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTTIMESTAMPSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCREQUESTTIMESTAMPSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocRequestTimestampSrvRequest
  :super ros::object
  :slots ())

(defmethod sick_lidar_localization::SickLocRequestTimestampSrvRequest
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

(defclass sick_lidar_localization::SickLocRequestTimestampSrvResponse
  :super ros::object
  :slots (_timestamp_lidar_ms _mean_time_vehicle_ms _delta_time_ms _send_time_vehicle_sec _send_time_vehicle_nsec _receive_time_vehicle_sec _receive_time_vehicle_nsec ))

(defmethod sick_lidar_localization::SickLocRequestTimestampSrvResponse
  (:init
   (&key
    ((:timestamp_lidar_ms __timestamp_lidar_ms) 0)
    ((:mean_time_vehicle_ms __mean_time_vehicle_ms) 0)
    ((:delta_time_ms __delta_time_ms) 0)
    ((:send_time_vehicle_sec __send_time_vehicle_sec) 0)
    ((:send_time_vehicle_nsec __send_time_vehicle_nsec) 0)
    ((:receive_time_vehicle_sec __receive_time_vehicle_sec) 0)
    ((:receive_time_vehicle_nsec __receive_time_vehicle_nsec) 0)
    )
   (send-super :init)
   (setq _timestamp_lidar_ms (round __timestamp_lidar_ms))
   (setq _mean_time_vehicle_ms (round __mean_time_vehicle_ms))
   (setq _delta_time_ms (round __delta_time_ms))
   (setq _send_time_vehicle_sec (round __send_time_vehicle_sec))
   (setq _send_time_vehicle_nsec (round __send_time_vehicle_nsec))
   (setq _receive_time_vehicle_sec (round __receive_time_vehicle_sec))
   (setq _receive_time_vehicle_nsec (round __receive_time_vehicle_nsec))
   self)
  (:timestamp_lidar_ms
   (&optional __timestamp_lidar_ms)
   (if __timestamp_lidar_ms (setq _timestamp_lidar_ms __timestamp_lidar_ms)) _timestamp_lidar_ms)
  (:mean_time_vehicle_ms
   (&optional __mean_time_vehicle_ms)
   (if __mean_time_vehicle_ms (setq _mean_time_vehicle_ms __mean_time_vehicle_ms)) _mean_time_vehicle_ms)
  (:delta_time_ms
   (&optional __delta_time_ms)
   (if __delta_time_ms (setq _delta_time_ms __delta_time_ms)) _delta_time_ms)
  (:send_time_vehicle_sec
   (&optional __send_time_vehicle_sec)
   (if __send_time_vehicle_sec (setq _send_time_vehicle_sec __send_time_vehicle_sec)) _send_time_vehicle_sec)
  (:send_time_vehicle_nsec
   (&optional __send_time_vehicle_nsec)
   (if __send_time_vehicle_nsec (setq _send_time_vehicle_nsec __send_time_vehicle_nsec)) _send_time_vehicle_nsec)
  (:receive_time_vehicle_sec
   (&optional __receive_time_vehicle_sec)
   (if __receive_time_vehicle_sec (setq _receive_time_vehicle_sec __receive_time_vehicle_sec)) _receive_time_vehicle_sec)
  (:receive_time_vehicle_nsec
   (&optional __receive_time_vehicle_nsec)
   (if __receive_time_vehicle_nsec (setq _receive_time_vehicle_nsec __receive_time_vehicle_nsec)) _receive_time_vehicle_nsec)
  (:serialization-length
   ()
   (+
    ;; uint32 _timestamp_lidar_ms
    4
    ;; uint64 _mean_time_vehicle_ms
    8
    ;; uint64 _delta_time_ms
    8
    ;; uint32 _send_time_vehicle_sec
    4
    ;; uint32 _send_time_vehicle_nsec
    4
    ;; uint32 _receive_time_vehicle_sec
    4
    ;; uint32 _receive_time_vehicle_nsec
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _timestamp_lidar_ms
       (write-long _timestamp_lidar_ms s)
     ;; uint64 _mean_time_vehicle_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mean_time_vehicle_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mean_time_vehicle_ms) (= (length (_mean_time_vehicle_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mean_time_vehicle_ms . bv) 0) 0) s)
              (write-long (ash (elt (_mean_time_vehicle_ms . bv) 1) -1) s))
             ((and (class _mean_time_vehicle_ms) (= (length (_mean_time_vehicle_ms . bv)) 1)) ;; big1
              (write-long (elt (_mean_time_vehicle_ms . bv) 0) s)
              (write-long (if (>= _mean_time_vehicle_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mean_time_vehicle_ms s)(write-long (if (>= _mean_time_vehicle_ms 0) 0 #xffffffff) s)))
     ;; uint64 _delta_time_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _delta_time_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _delta_time_ms) (= (length (_delta_time_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_delta_time_ms . bv) 0) 0) s)
              (write-long (ash (elt (_delta_time_ms . bv) 1) -1) s))
             ((and (class _delta_time_ms) (= (length (_delta_time_ms . bv)) 1)) ;; big1
              (write-long (elt (_delta_time_ms . bv) 0) s)
              (write-long (if (>= _delta_time_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _delta_time_ms s)(write-long (if (>= _delta_time_ms 0) 0 #xffffffff) s)))
     ;; uint32 _send_time_vehicle_sec
       (write-long _send_time_vehicle_sec s)
     ;; uint32 _send_time_vehicle_nsec
       (write-long _send_time_vehicle_nsec s)
     ;; uint32 _receive_time_vehicle_sec
       (write-long _receive_time_vehicle_sec s)
     ;; uint32 _receive_time_vehicle_nsec
       (write-long _receive_time_vehicle_nsec s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _timestamp_lidar_ms
     (setq _timestamp_lidar_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _mean_time_vehicle_ms
     
#+(or :alpha :irix6 :x86_64)
      (setf _mean_time_vehicle_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mean_time_vehicle_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _delta_time_ms
     
#+(or :alpha :irix6 :x86_64)
      (setf _delta_time_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _delta_time_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _send_time_vehicle_sec
     (setq _send_time_vehicle_sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _send_time_vehicle_nsec
     (setq _send_time_vehicle_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _receive_time_vehicle_sec
     (setq _receive_time_vehicle_sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _receive_time_vehicle_nsec
     (setq _receive_time_vehicle_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocRequestTimestampSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocRequestTimestampSrv :md5sum-) "ae8b1571bf8be63e0bdad9873d14be2b")
(setf (get sick_lidar_localization::SickLocRequestTimestampSrv :datatype-) "sick_lidar_localization/SickLocRequestTimestampSrv")
(setf (get sick_lidar_localization::SickLocRequestTimestampSrv :request) sick_lidar_localization::SickLocRequestTimestampSrvRequest)
(setf (get sick_lidar_localization::SickLocRequestTimestampSrv :response) sick_lidar_localization::SickLocRequestTimestampSrvResponse)

(defmethod sick_lidar_localization::SickLocRequestTimestampSrvRequest
  (:response () (instance sick_lidar_localization::SickLocRequestTimestampSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocRequestTimestampSrvRequest :md5sum-) "ae8b1571bf8be63e0bdad9873d14be2b")
(setf (get sick_lidar_localization::SickLocRequestTimestampSrvRequest :datatype-) "sick_lidar_localization/SickLocRequestTimestampSrvRequest")
(setf (get sick_lidar_localization::SickLocRequestTimestampSrvRequest :definition-)
      "# Definition of ROS service SickLocRequestTimestamp for sick localization.
#
# ROS service SickLocRequestTimestamp requests a timestamp from the localization controller
# by sending cola command LocRequestTimestamp (\"sMN LocRequestTimestamp\").
#
# The service receives and decodes the current timestamp (uint32 timestamp in milliseconds)
# and calculates the time offset with the following formular:
#
# delta_time_ms := mean_time_vehicle_ms - timestamp_lidar_ms
# mean_time_vehicle_ms := (send_time_vehicle + receive_time_vehicle) / 2
#                      := vehicles mean timestamp in milliseconds
# send_time_vehicle    := vehicles timestamp when sending LocRequestTimestamp
# receive_time_vehicle := vehicles timestamp when receiving the LocRequestTimestamp response
# timestamp_lidar_ms   := lidar timestamp in milliseconds from LocRequestTimestamp response
#
# See Operation-Instruction-v1.1.0.241R.pdf for details about time synchronization and
# time offset calculation. See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf
# for further details about Cola telegram LocRequestTimestamp.

#
# Request (input)
#

---

#
# Response (output)
#

uint32 timestamp_lidar_ms        # Lidar timestamp in milliseconds from LocRequestTimestamp response
uint64 mean_time_vehicle_ms      # Vehicle mean timestamp in milliseconds: (send_time_vehicle + receive_time_vehicle) / 2
uint64 delta_time_ms             # Time offset: mean_time_vehicle_ms - timestamp_lidar_ms

uint32 send_time_vehicle_sec     # Vehicle timestamp when sending LocRequestTimestamp (seconds part of ros timestamp immediately before tcp send)
uint32 send_time_vehicle_nsec    # Vehicle timestamp when sending LocRequestTimestamp (nano seconds part of ros timestamp immediately before tcp send)
uint32 receive_time_vehicle_sec  # Vehicle timestamp when receiving the LocRequestTimestamp response (seconds part of ros timestamp immediately after first response byte received)
uint32 receive_time_vehicle_nsec # Vehicle timestamp when receiving the LocRequestTimestamp response (nano seconds part of ros timestamp immediately after first response byte received)

")

(setf (get sick_lidar_localization::SickLocRequestTimestampSrvResponse :md5sum-) "ae8b1571bf8be63e0bdad9873d14be2b")
(setf (get sick_lidar_localization::SickLocRequestTimestampSrvResponse :datatype-) "sick_lidar_localization/SickLocRequestTimestampSrvResponse")
(setf (get sick_lidar_localization::SickLocRequestTimestampSrvResponse :definition-)
      "# Definition of ROS service SickLocRequestTimestamp for sick localization.
#
# ROS service SickLocRequestTimestamp requests a timestamp from the localization controller
# by sending cola command LocRequestTimestamp (\"sMN LocRequestTimestamp\").
#
# The service receives and decodes the current timestamp (uint32 timestamp in milliseconds)
# and calculates the time offset with the following formular:
#
# delta_time_ms := mean_time_vehicle_ms - timestamp_lidar_ms
# mean_time_vehicle_ms := (send_time_vehicle + receive_time_vehicle) / 2
#                      := vehicles mean timestamp in milliseconds
# send_time_vehicle    := vehicles timestamp when sending LocRequestTimestamp
# receive_time_vehicle := vehicles timestamp when receiving the LocRequestTimestamp response
# timestamp_lidar_ms   := lidar timestamp in milliseconds from LocRequestTimestamp response
#
# See Operation-Instruction-v1.1.0.241R.pdf for details about time synchronization and
# time offset calculation. See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf
# for further details about Cola telegram LocRequestTimestamp.

#
# Request (input)
#

---

#
# Response (output)
#

uint32 timestamp_lidar_ms        # Lidar timestamp in milliseconds from LocRequestTimestamp response
uint64 mean_time_vehicle_ms      # Vehicle mean timestamp in milliseconds: (send_time_vehicle + receive_time_vehicle) / 2
uint64 delta_time_ms             # Time offset: mean_time_vehicle_ms - timestamp_lidar_ms

uint32 send_time_vehicle_sec     # Vehicle timestamp when sending LocRequestTimestamp (seconds part of ros timestamp immediately before tcp send)
uint32 send_time_vehicle_nsec    # Vehicle timestamp when sending LocRequestTimestamp (nano seconds part of ros timestamp immediately before tcp send)
uint32 receive_time_vehicle_sec  # Vehicle timestamp when receiving the LocRequestTimestamp response (seconds part of ros timestamp immediately after first response byte received)
uint32 receive_time_vehicle_nsec # Vehicle timestamp when receiving the LocRequestTimestamp response (nano seconds part of ros timestamp immediately after first response byte received)

")



(provide :sick_lidar_localization/SickLocRequestTimestampSrv "ae8b1571bf8be63e0bdad9873d14be2b")


