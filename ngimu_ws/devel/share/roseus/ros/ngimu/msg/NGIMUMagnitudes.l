;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUMagnitudes)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUMagnitudes (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUMAGNITUDES")
  (make-package "NGIMU::NGIMUMAGNITUDES"))

(in-package "ROS")
;;//! \htmlinclude NGIMUMagnitudes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUMagnitudes
  :super ros::object
  :slots (_header _mag_gyroscope _mag_accelerometer _mag_magnetometer ))

(defmethod ngimu::NGIMUMagnitudes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mag_gyroscope __mag_gyroscope) 0.0)
    ((:mag_accelerometer __mag_accelerometer) 0.0)
    ((:mag_magnetometer __mag_magnetometer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mag_gyroscope (float __mag_gyroscope))
   (setq _mag_accelerometer (float __mag_accelerometer))
   (setq _mag_magnetometer (float __mag_magnetometer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mag_gyroscope
   (&optional __mag_gyroscope)
   (if __mag_gyroscope (setq _mag_gyroscope __mag_gyroscope)) _mag_gyroscope)
  (:mag_accelerometer
   (&optional __mag_accelerometer)
   (if __mag_accelerometer (setq _mag_accelerometer __mag_accelerometer)) _mag_accelerometer)
  (:mag_magnetometer
   (&optional __mag_magnetometer)
   (if __mag_magnetometer (setq _mag_magnetometer __mag_magnetometer)) _mag_magnetometer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _mag_gyroscope
    4
    ;; float32 _mag_accelerometer
    4
    ;; float32 _mag_magnetometer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _mag_gyroscope
       (sys::poke _mag_gyroscope (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mag_accelerometer
       (sys::poke _mag_accelerometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mag_magnetometer
       (sys::poke _mag_magnetometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _mag_gyroscope
     (setq _mag_gyroscope (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mag_accelerometer
     (setq _mag_accelerometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mag_magnetometer
     (setq _mag_magnetometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ngimu::NGIMUMagnitudes :md5sum-) "afa562698c740c0a2db1c9d9f6327002")
(setf (get ngimu::NGIMUMagnitudes :datatype-) "ngimu/NGIMUMagnitudes")
(setf (get ngimu::NGIMUMagnitudes :definition-)
      "Header header
float32 mag_gyroscope
float32 mag_accelerometer
float32 mag_magnetometer

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



(provide :ngimu/NGIMUMagnitudes "afa562698c740c0a2db1c9d9f6327002")


