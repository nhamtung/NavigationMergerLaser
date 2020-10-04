;; Auto-generated. Do not edit!


(when (boundp 'sick_lidar_localization::SickLocResultPortHeaderMsg)
  (if (not (find-package "SICK_LIDAR_LOCALIZATION"))
    (make-package "SICK_LIDAR_LOCALIZATION"))
  (shadow 'SickLocResultPortHeaderMsg (find-package "SICK_LIDAR_LOCALIZATION")))
(unless (find-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTHEADERMSG")
  (make-package "SICK_LIDAR_LOCALIZATION::SICKLOCRESULTPORTHEADERMSG"))

(in-package "ROS")
;;//! \htmlinclude SickLocResultPortHeaderMsg.msg.html


(defclass sick_lidar_localization::SickLocResultPortHeaderMsg
  :super ros::object
  :slots (_MagicWord _Length _PayloadType _PayloadVersion _OrderNumber _SerialNumber _FW_Version _TelegramCounter _SystemTime ))

(defmethod sick_lidar_localization::SickLocResultPortHeaderMsg
  (:init
   (&key
    ((:MagicWord __MagicWord) 0)
    ((:Length __Length) 0)
    ((:PayloadType __PayloadType) 0)
    ((:PayloadVersion __PayloadVersion) 0)
    ((:OrderNumber __OrderNumber) 0)
    ((:SerialNumber __SerialNumber) 0)
    ((:FW_Version __FW_Version) (make-array 0 :initial-element 0 :element-type :char))
    ((:TelegramCounter __TelegramCounter) 0)
    ((:SystemTime __SystemTime) 0)
    )
   (send-super :init)
   (setq _MagicWord (round __MagicWord))
   (setq _Length (round __Length))
   (setq _PayloadType (round __PayloadType))
   (setq _PayloadVersion (round __PayloadVersion))
   (setq _OrderNumber (round __OrderNumber))
   (setq _SerialNumber (round __SerialNumber))
   (setq _FW_Version __FW_Version)
   (setq _TelegramCounter (round __TelegramCounter))
   (setq _SystemTime (round __SystemTime))
   self)
  (:MagicWord
   (&optional __MagicWord)
   (if __MagicWord (setq _MagicWord __MagicWord)) _MagicWord)
  (:Length
   (&optional __Length)
   (if __Length (setq _Length __Length)) _Length)
  (:PayloadType
   (&optional __PayloadType)
   (if __PayloadType (setq _PayloadType __PayloadType)) _PayloadType)
  (:PayloadVersion
   (&optional __PayloadVersion)
   (if __PayloadVersion (setq _PayloadVersion __PayloadVersion)) _PayloadVersion)
  (:OrderNumber
   (&optional __OrderNumber)
   (if __OrderNumber (setq _OrderNumber __OrderNumber)) _OrderNumber)
  (:SerialNumber
   (&optional __SerialNumber)
   (if __SerialNumber (setq _SerialNumber __SerialNumber)) _SerialNumber)
  (:FW_Version
   (&optional __FW_Version)
   (if __FW_Version (setq _FW_Version __FW_Version)) _FW_Version)
  (:TelegramCounter
   (&optional __TelegramCounter)
   (if __TelegramCounter (setq _TelegramCounter __TelegramCounter)) _TelegramCounter)
  (:SystemTime
   (&optional __SystemTime)
   (if __SystemTime (setq _SystemTime __SystemTime)) _SystemTime)
  (:serialization-length
   ()
   (+
    ;; uint32 _MagicWord
    4
    ;; uint32 _Length
    4
    ;; uint16 _PayloadType
    2
    ;; uint16 _PayloadVersion
    2
    ;; uint32 _OrderNumber
    4
    ;; uint32 _SerialNumber
    4
    ;; uint8[] _FW_Version
    (* 1    (length _FW_Version)) 4
    ;; uint32 _TelegramCounter
    4
    ;; uint64 _SystemTime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _MagicWord
       (write-long _MagicWord s)
     ;; uint32 _Length
       (write-long _Length s)
     ;; uint16 _PayloadType
       (write-word _PayloadType s)
     ;; uint16 _PayloadVersion
       (write-word _PayloadVersion s)
     ;; uint32 _OrderNumber
       (write-long _OrderNumber s)
     ;; uint32 _SerialNumber
       (write-long _SerialNumber s)
     ;; uint8[] _FW_Version
     (write-long (length _FW_Version) s)
     (princ _FW_Version s)
     ;; uint32 _TelegramCounter
       (write-long _TelegramCounter s)
     ;; uint64 _SystemTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _SystemTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _SystemTime) (= (length (_SystemTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_SystemTime . bv) 0) 0) s)
              (write-long (ash (elt (_SystemTime . bv) 1) -1) s))
             ((and (class _SystemTime) (= (length (_SystemTime . bv)) 1)) ;; big1
              (write-long (elt (_SystemTime . bv) 0) s)
              (write-long (if (>= _SystemTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _SystemTime s)(write-long (if (>= _SystemTime 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _MagicWord
     (setq _MagicWord (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _Length
     (setq _Length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _PayloadType
     (setq _PayloadType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _PayloadVersion
     (setq _PayloadVersion (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _OrderNumber
     (setq _OrderNumber (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _SerialNumber
     (setq _SerialNumber (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _FW_Version
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _FW_Version (make-array n :element-type :char))
     (replace _FW_Version buf :start2 ptr-) (incf ptr- n))
   ;; uint32 _TelegramCounter
     (setq _TelegramCounter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _SystemTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _SystemTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _SystemTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get sick_lidar_localization::SickLocResultPortHeaderMsg :md5sum-) "2faf4992147f30886f5a055c14ae68b9")
(setf (get sick_lidar_localization::SickLocResultPortHeaderMsg :datatype-) "sick_lidar_localization/SickLocResultPortHeaderMsg")
(setf (get sick_lidar_localization::SickLocResultPortHeaderMsg :definition-)
      "# Definition of ros message SickLocResultPortHeaderMsg.
# SickLocResultPortHeaderMsg publishes the header of a result port telegram
# for sick localization (52 byte). See chapter 5.9 (\"About result port telegrams\")
# of the operation manual for further details.

uint32  MagicWord        # Magic word SICK (0x53 0x49 0x43 0x4B). Size: 4 × UInt8 = 4 byte
uint32  Length           # Length of telegram incl. header, payload, and trailer. Size: UInt32 = 4 byte
uint16  PayloadType      # Payload type: 0x06c2 = Little Endian, 0x0642 = Big Endian. Size: UInt16 = 2 byte
uint16  PayloadVersion   # Version of PayloadType structure. Size: UInt16 = 2 byte
uint32  OrderNumber      # Order number of the localization controller. Size: UInt32 = 4 byte
uint32  SerialNumber     # Serial number of the localization controller. Size: UInt32 = 4 byte
uint8[] FW_Version       # Software version of the localization controller. Size: 20 × UInt8 = 20 byte
uint32  TelegramCounter  # Telegram counter since last start-up. Size: UInt32 = 4 byte
uint64  SystemTime       # Not used. Size: NTP = 8 byte


")



(provide :sick_lidar_localization/SickLocResultPortHeaderMsg "2faf4992147f30886f5a055c14ae68b9")


