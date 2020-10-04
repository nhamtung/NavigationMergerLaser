;; Auto-generated. Do not edit!


(when (boundp 'r2serial_driver::Num)
  (if (not (find-package "R2SERIAL_DRIVER"))
    (make-package "R2SERIAL_DRIVER"))
  (shadow 'Num (find-package "R2SERIAL_DRIVER")))
(unless (find-package "R2SERIAL_DRIVER::NUM")
  (make-package "R2SERIAL_DRIVER::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass r2serial_driver::Num
  :super ros::object
  :slots (_RMID _TMID _ID _PID _DataNum _Dta_Low _Dta_High _Sum ))

(defmethod r2serial_driver::Num
  (:init
   (&key
    ((:RMID __RMID) 0)
    ((:TMID __TMID) 0)
    ((:ID __ID) 0)
    ((:PID __PID) 0)
    ((:DataNum __DataNum) 0)
    ((:Dta_Low __Dta_Low) 0)
    ((:Dta_High __Dta_High) 0)
    ((:Sum __Sum) 0)
    )
   (send-super :init)
   (setq _RMID (round __RMID))
   (setq _TMID (round __TMID))
   (setq _ID (round __ID))
   (setq _PID (round __PID))
   (setq _DataNum (round __DataNum))
   (setq _Dta_Low (round __Dta_Low))
   (setq _Dta_High (round __Dta_High))
   (setq _Sum (round __Sum))
   self)
  (:RMID
   (&optional __RMID)
   (if __RMID (setq _RMID __RMID)) _RMID)
  (:TMID
   (&optional __TMID)
   (if __TMID (setq _TMID __TMID)) _TMID)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:PID
   (&optional __PID)
   (if __PID (setq _PID __PID)) _PID)
  (:DataNum
   (&optional __DataNum)
   (if __DataNum (setq _DataNum __DataNum)) _DataNum)
  (:Dta_Low
   (&optional __Dta_Low)
   (if __Dta_Low (setq _Dta_Low __Dta_Low)) _Dta_Low)
  (:Dta_High
   (&optional __Dta_High)
   (if __Dta_High (setq _Dta_High __Dta_High)) _Dta_High)
  (:Sum
   (&optional __Sum)
   (if __Sum (setq _Sum __Sum)) _Sum)
  (:serialization-length
   ()
   (+
    ;; uint8 _RMID
    1
    ;; uint8 _TMID
    1
    ;; uint8 _ID
    1
    ;; uint8 _PID
    1
    ;; uint8 _DataNum
    1
    ;; uint8 _Dta_Low
    1
    ;; uint8 _Dta_High
    1
    ;; uint8 _Sum
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _RMID
       (write-byte _RMID s)
     ;; uint8 _TMID
       (write-byte _TMID s)
     ;; uint8 _ID
       (write-byte _ID s)
     ;; uint8 _PID
       (write-byte _PID s)
     ;; uint8 _DataNum
       (write-byte _DataNum s)
     ;; uint8 _Dta_Low
       (write-byte _Dta_Low s)
     ;; uint8 _Dta_High
       (write-byte _Dta_High s)
     ;; uint8 _Sum
       (write-byte _Sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _RMID
     (setq _RMID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TMID
     (setq _TMID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PID
     (setq _PID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DataNum
     (setq _DataNum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Dta_Low
     (setq _Dta_Low (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Dta_High
     (setq _Dta_High (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Sum
     (setq _Sum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get r2serial_driver::Num :md5sum-) "137910bf2ef85fa95265084c3edcdb56")
(setf (get r2serial_driver::Num :datatype-) "r2serial_driver/Num")
(setf (get r2serial_driver::Num :definition-)
      "uint8 RMID
uint8 TMID 
uint8 ID
uint8 PID
uint8 DataNum
uint8 Dta_Low
uint8 Dta_High
uint8 Sum



")



(provide :r2serial_driver/Num "137910bf2ef85fa95265084c3edcdb56")


