;; Auto-generated. Do not edit!


(when (boundp 'driver_blvd_controller::speed_wheel)
  (if (not (find-package "DRIVER_BLVD_CONTROLLER"))
    (make-package "DRIVER_BLVD_CONTROLLER"))
  (shadow 'speed_wheel (find-package "DRIVER_BLVD_CONTROLLER")))
(unless (find-package "DRIVER_BLVD_CONTROLLER::SPEED_WHEEL")
  (make-package "DRIVER_BLVD_CONTROLLER::SPEED_WHEEL"))

(in-package "ROS")
;;//! \htmlinclude speed_wheel.msg.html


(defclass driver_blvd_controller::speed_wheel
  :super ros::object
  :slots (_wheel_letf _wheel_right ))

(defmethod driver_blvd_controller::speed_wheel
  (:init
   (&key
    ((:wheel_letf __wheel_letf) 0)
    ((:wheel_right __wheel_right) 0)
    )
   (send-super :init)
   (setq _wheel_letf (round __wheel_letf))
   (setq _wheel_right (round __wheel_right))
   self)
  (:wheel_letf
   (&optional __wheel_letf)
   (if __wheel_letf (setq _wheel_letf __wheel_letf)) _wheel_letf)
  (:wheel_right
   (&optional __wheel_right)
   (if __wheel_right (setq _wheel_right __wheel_right)) _wheel_right)
  (:serialization-length
   ()
   (+
    ;; int16 _wheel_letf
    2
    ;; int16 _wheel_right
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _wheel_letf
       (write-word _wheel_letf s)
     ;; int16 _wheel_right
       (write-word _wheel_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _wheel_letf
     (setq _wheel_letf (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _wheel_right
     (setq _wheel_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get driver_blvd_controller::speed_wheel :md5sum-) "fa530f9e80374edbcefccea8ede27bff")
(setf (get driver_blvd_controller::speed_wheel :datatype-) "driver_blvd_controller/speed_wheel")
(setf (get driver_blvd_controller::speed_wheel :definition-)
      "int16 wheel_letf
int16 wheel_right 



")



(provide :driver_blvd_controller/speed_wheel "fa530f9e80374edbcefccea8ede27bff")


