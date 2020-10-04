;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocColaTelegramSrv)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocColaTelegramSrv (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMSRV")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMSRV"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMSRVREQUEST")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMSRVREQUEST"))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMSRVRESPONSE")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCCOLATELEGRAMSRVRESPONSE"))

(in-package "ROS")





(defclass sick_lidar_localization::SickLocColaTelegramSrvRequest
  :super ros::object
  :slots (_cola_ascii_request _wait_response_timeout ))

(defmethod sick_lidar_localization::SickLocColaTelegramSrvRequest
  (:init
   (&key
    ((:cola_ascii_request __cola_ascii_request) "")
    ((:wait_response_timeout __wait_response_timeout) 0.0)
    )
   (send-super :init)
   (setq _cola_ascii_request (string __cola_ascii_request))
   (setq _wait_response_timeout (float __wait_response_timeout))
   self)
  (:cola_ascii_request
   (&optional __cola_ascii_request)
   (if __cola_ascii_request (setq _cola_ascii_request __cola_ascii_request)) _cola_ascii_request)
  (:wait_response_timeout
   (&optional __wait_response_timeout)
   (if __wait_response_timeout (setq _wait_response_timeout __wait_response_timeout)) _wait_response_timeout)
  (:serialization-length
   ()
   (+
    ;; string _cola_ascii_request
    4 (length _cola_ascii_request)
    ;; float32 _wait_response_timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cola_ascii_request
       (write-long (length _cola_ascii_request) s) (princ _cola_ascii_request s)
     ;; float32 _wait_response_timeout
       (sys::poke _wait_response_timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cola_ascii_request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cola_ascii_request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _wait_response_timeout
     (setq _wait_response_timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocColaTelegramSrvResponse
  :super ros::object
  :slots (_cola_ascii_response _send_timestamp_sec _send_timestamp_nsec _receive_timestamp_sec _receive_timestamp_nsec ))

(defmethod sick_lidar_localization::SickLocColaTelegramSrvResponse
  (:init
   (&key
    ((:cola_ascii_response __cola_ascii_response) "")
    ((:send_timestamp_sec __send_timestamp_sec) 0)
    ((:send_timestamp_nsec __send_timestamp_nsec) 0)
    ((:receive_timestamp_sec __receive_timestamp_sec) 0)
    ((:receive_timestamp_nsec __receive_timestamp_nsec) 0)
    )
   (send-super :init)
   (setq _cola_ascii_response (string __cola_ascii_response))
   (setq _send_timestamp_sec (round __send_timestamp_sec))
   (setq _send_timestamp_nsec (round __send_timestamp_nsec))
   (setq _receive_timestamp_sec (round __receive_timestamp_sec))
   (setq _receive_timestamp_nsec (round __receive_timestamp_nsec))
   self)
  (:cola_ascii_response
   (&optional __cola_ascii_response)
   (if __cola_ascii_response (setq _cola_ascii_response __cola_ascii_response)) _cola_ascii_response)
  (:send_timestamp_sec
   (&optional __send_timestamp_sec)
   (if __send_timestamp_sec (setq _send_timestamp_sec __send_timestamp_sec)) _send_timestamp_sec)
  (:send_timestamp_nsec
   (&optional __send_timestamp_nsec)
   (if __send_timestamp_nsec (setq _send_timestamp_nsec __send_timestamp_nsec)) _send_timestamp_nsec)
  (:receive_timestamp_sec
   (&optional __receive_timestamp_sec)
   (if __receive_timestamp_sec (setq _receive_timestamp_sec __receive_timestamp_sec)) _receive_timestamp_sec)
  (:receive_timestamp_nsec
   (&optional __receive_timestamp_nsec)
   (if __receive_timestamp_nsec (setq _receive_timestamp_nsec __receive_timestamp_nsec)) _receive_timestamp_nsec)
  (:serialization-length
   ()
   (+
    ;; string _cola_ascii_response
    4 (length _cola_ascii_response)
    ;; uint32 _send_timestamp_sec
    4
    ;; uint32 _send_timestamp_nsec
    4
    ;; uint32 _receive_timestamp_sec
    4
    ;; uint32 _receive_timestamp_nsec
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cola_ascii_response
       (write-long (length _cola_ascii_response) s) (princ _cola_ascii_response s)
     ;; uint32 _send_timestamp_sec
       (write-long _send_timestamp_sec s)
     ;; uint32 _send_timestamp_nsec
       (write-long _send_timestamp_nsec s)
     ;; uint32 _receive_timestamp_sec
       (write-long _receive_timestamp_sec s)
     ;; uint32 _receive_timestamp_nsec
       (write-long _receive_timestamp_nsec s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cola_ascii_response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cola_ascii_response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _send_timestamp_sec
     (setq _send_timestamp_sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _send_timestamp_nsec
     (setq _send_timestamp_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _receive_timestamp_sec
     (setq _receive_timestamp_sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _receive_timestamp_nsec
     (setq _receive_timestamp_nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sick_lidar_localization::SickLocColaTelegramSrv
  :super ros::object
  :slots ())

(setf (get sick_lidar_localization::SickLocColaTelegramSrv :md5sum-) "60dfc3041906873e51cdec40ce270a34")
(setf (get sick_lidar_localization::SickLocColaTelegramSrv :datatype-) "sick_lidar_localization/SickLocColaTelegramSrv")
(setf (get sick_lidar_localization::SickLocColaTelegramSrv :request) sick_lidar_localization::SickLocColaTelegramSrvRequest)
(setf (get sick_lidar_localization::SickLocColaTelegramSrv :response) sick_lidar_localization::SickLocColaTelegramSrvResponse)

(defmethod sick_lidar_localization::SickLocColaTelegramSrvRequest
  (:response () (instance sick_lidar_localization::SickLocColaTelegramSrvResponse :init)))

(setf (get sick_lidar_localization::SickLocColaTelegramSrvRequest :md5sum-) "60dfc3041906873e51cdec40ce270a34")
(setf (get sick_lidar_localization::SickLocColaTelegramSrvRequest :datatype-) "sick_lidar_localization/SickLocColaTelegramSrvRequest")
(setf (get sick_lidar_localization::SickLocColaTelegramSrvRequest :definition-)
      "# Definition of ROS service SickLocColaTelegram for sick localization.
# ROS service SickLocColaTelegram encodes and sends a Cola telegram to the localization controller,
# receives and encodes the answer from the controller.
#
# See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf
# for further details about Cola telgrams.

#
# Request (input)
#

string  cola_ascii_request       # Cola-ASCII telegram to send to the localization controller, f.e. \"sRN SetAccessMode 3 F4724744\".
float32 wait_response_timeout    # Timeout for the controller response in secondes. Use 0.0 for Cola requests without controller response.
# bool send_binary               # Not used (true: send binary telegram, false/default: send ASCII telegram)

---

#
# Response (output)
#

string cola_ascii_response       # Response from the localization controller (empty in case of connection failures, communication errors or timeouts)
uint32 send_timestamp_sec        # Send timestamp (seconds part of ros timestamp immediately before tcp send)
uint32 send_timestamp_nsec       # Send timestamp (nano seconds part of ros timestamp immediately before tcp send)
uint32 receive_timestamp_sec     # Receive timestamp (seconds part of ros timestamp immediately after first response byte received)
uint32 receive_timestamp_nsec    # Receive timestamp (nano seconds part of ros timestamp immediately after first response byte received)

")

(setf (get sick_lidar_localization::SickLocColaTelegramSrvResponse :md5sum-) "60dfc3041906873e51cdec40ce270a34")
(setf (get sick_lidar_localization::SickLocColaTelegramSrvResponse :datatype-) "sick_lidar_localization/SickLocColaTelegramSrvResponse")
(setf (get sick_lidar_localization::SickLocColaTelegramSrvResponse :definition-)
      "# Definition of ROS service SickLocColaTelegram for sick localization.
# ROS service SickLocColaTelegram encodes and sends a Cola telegram to the localization controller,
# receives and encodes the answer from the controller.
#
# See Telegram-Listing-v1.1.0.241R.pdf and Technical_information_Telegram_Listing_NAV_LOC_en_IM0076556.pdf
# for further details about Cola telgrams.

#
# Request (input)
#

string  cola_ascii_request       # Cola-ASCII telegram to send to the localization controller, f.e. \"sRN SetAccessMode 3 F4724744\".
float32 wait_response_timeout    # Timeout for the controller response in secondes. Use 0.0 for Cola requests without controller response.
# bool send_binary               # Not used (true: send binary telegram, false/default: send ASCII telegram)

---

#
# Response (output)
#

string cola_ascii_response       # Response from the localization controller (empty in case of connection failures, communication errors or timeouts)
uint32 send_timestamp_sec        # Send timestamp (seconds part of ros timestamp immediately before tcp send)
uint32 send_timestamp_nsec       # Send timestamp (nano seconds part of ros timestamp immediately before tcp send)
uint32 receive_timestamp_sec     # Receive timestamp (seconds part of ros timestamp immediately after first response byte received)
uint32 receive_timestamp_nsec    # Receive timestamp (nano seconds part of ros timestamp immediately after first response byte received)

")



(provide :sick_lidar_localization/SickLocColaTelegramSrv "60dfc3041906873e51cdec40ce270a34")


