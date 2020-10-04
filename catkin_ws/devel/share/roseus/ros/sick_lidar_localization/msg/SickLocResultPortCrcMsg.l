;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocResultPortCrcMsg)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocResultPortCrcMsg (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTCRCMSG")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTCRCMSG"))

(in-package "ROS")
;;//! \htmlinclude SickLocResultPortCrcMsg.msg.html


(defclass sick_lidar_localization::SickLocResultPortCrcMsg
  :super ros::object
  :slots (_Checksum ))

(defmethod sick_lidar_localization::SickLocResultPortCrcMsg
  (:init
   (&key
    ((:Checksum __Checksum) 0)
    )
   (send-super :init)
   (setq _Checksum (round __Checksum))
   self)
  (:Checksum
   (&optional __Checksum)
   (if __Checksum (setq _Checksum __Checksum)) _Checksum)
  (:serialization-length
   ()
   (+
    ;; uint16 _Checksum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _Checksum
       (write-word _Checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _Checksum
     (setq _Checksum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get sick_lidar_localization::SickLocResultPortCrcMsg :md5sum-) "df59506c295b6d20407c4cced0a0b9aa")
(setf (get sick_lidar_localization::SickLocResultPortCrcMsg :datatype-) "sick_lidar_localization/SickLocResultPortCrcMsg")
(setf (get sick_lidar_localization::SickLocResultPortCrcMsg :definition-)
      "# Definition of ros message SickLocResultPortCrcMsg.
# SickLocResultPortCrcMsg publishes the CRC trailer of a result port telegram
# for sick localization (2 byte). 
# Checksum details:
# * Width: 16 bits
# * Truncated polynomial: 0x1021 CRC polynomials with orders of x16 + x12 + x5 + 1 (counted without the leading '1' bit)
# * Initial value = 0xFFFF
# See chapter 5.9 (\"About result port telegrams\") of the operation manual for further details.

uint16 Checksum # CRC16-CCITT over length of header (52 bytes) and payload (52 bytes) without 2 bytes of this trailer. Size: UInt16 = 2 byte


")



(provide :sick_lidar_localization/SickLocResultPortCrcMsg "df59506c295b6d20407c4cced0a0b9aa")


