;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUTemperature)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUTemperature (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUTEMPERATURE")
  (make-package "NGIMU::NGIMUTEMPERATURE"))

(in-package "ROS")
;;//! \htmlinclude NGIMUTemperature.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUTemperature
  :super ros::object
  :slots (_header _temp_processor _temp_gyro_accel _temp_barometer ))

(defmethod ngimu::NGIMUTemperature
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temp_processor __temp_processor) 0.0)
    ((:temp_gyro_accel __temp_gyro_accel) 0.0)
    ((:temp_barometer __temp_barometer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _temp_processor (float __temp_processor))
   (setq _temp_gyro_accel (float __temp_gyro_accel))
   (setq _temp_barometer (float __temp_barometer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temp_processor
   (&optional __temp_processor)
   (if __temp_processor (setq _temp_processor __temp_processor)) _temp_processor)
  (:temp_gyro_accel
   (&optional __temp_gyro_accel)
   (if __temp_gyro_accel (setq _temp_gyro_accel __temp_gyro_accel)) _temp_gyro_accel)
  (:temp_barometer
   (&optional __temp_barometer)
   (if __temp_barometer (setq _temp_barometer __temp_barometer)) _temp_barometer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _temp_processor
    4
    ;; float32 _temp_gyro_accel
    4
    ;; float32 _temp_barometer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _temp_processor
       (sys::poke _temp_processor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temp_gyro_accel
       (sys::poke _temp_gyro_accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temp_barometer
       (sys::poke _temp_barometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _temp_processor
     (setq _temp_processor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temp_gyro_accel
     (setq _temp_gyro_accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temp_barometer
     (setq _temp_barometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ngimu::NGIMUTemperature :md5sum-) "d24d79a8d8f66d391e56b823cfb9b329")
(setf (get ngimu::NGIMUTemperature :datatype-) "ngimu/NGIMUTemperature")
(setf (get ngimu::NGIMUTemperature :definition-)
      "Header header
float32 temp_processor
float32 temp_gyro_accel
float32 temp_barometer

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :ngimu/NGIMUTemperature "d24d79a8d8f66d391e56b823cfb9b329")


