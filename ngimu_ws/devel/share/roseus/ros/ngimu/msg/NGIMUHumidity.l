;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUHumidity)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUHumidity (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUHUMIDITY")
  (make-package "NGIMU::NGIMUHUMIDITY"))

(in-package "ROS")
;;//! \htmlinclude NGIMUHumidity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUHumidity
  :super ros::object
  :slots (_header _humidity ))

(defmethod ngimu::NGIMUHumidity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:humidity __humidity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _humidity (float __humidity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _humidity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _humidity
       (sys::poke _humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _humidity
     (setq _humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ngimu::NGIMUHumidity :md5sum-) "e2c04cbee6a587b40522f7590b7843a4")
(setf (get ngimu::NGIMUHumidity :datatype-) "ngimu/NGIMUHumidity")
(setf (get ngimu::NGIMUHumidity :definition-)
      "Header header
float32 humidity

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



(provide :ngimu/NGIMUHumidity "e2c04cbee6a587b40522f7590b7843a4")


