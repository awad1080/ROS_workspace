;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUAltitude)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUAltitude (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUALTITUDE")
  (make-package "NGIMU::NGIMUALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude NGIMUAltitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUAltitude
  :super ros::object
  :slots (_header _altitude ))

(defmethod ngimu::NGIMUAltitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _altitude (float __altitude))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _altitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ngimu::NGIMUAltitude :md5sum-) "40947c0a61b4e5eba99666816495e944")
(setf (get ngimu::NGIMUAltitude :datatype-) "ngimu/NGIMUAltitude")
(setf (get ngimu::NGIMUAltitude :definition-)
      "Header header
float32 altitude

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



(provide :ngimu/NGIMUAltitude "40947c0a61b4e5eba99666816495e944")


