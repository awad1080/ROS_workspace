;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUBattery)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUBattery (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUBATTERY")
  (make-package "NGIMU::NGIMUBATTERY"))

(in-package "ROS")
;;//! \htmlinclude NGIMUBattery.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUBattery
  :super ros::object
  :slots (_header _batterylevel _timetoempty _voltage _current _state ))

(defmethod ngimu::NGIMUBattery
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:batterylevel __batterylevel) 0.0)
    ((:timetoempty __timetoempty) 0.0)
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _batterylevel (float __batterylevel))
   (setq _timetoempty (float __timetoempty))
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:batterylevel
   (&optional __batterylevel)
   (if __batterylevel (setq _batterylevel __batterylevel)) _batterylevel)
  (:timetoempty
   (&optional __timetoempty)
   (if __timetoempty (setq _timetoempty __timetoempty)) _timetoempty)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _batterylevel
    4
    ;; float32 _timetoempty
    4
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ;; char _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _batterylevel
       (sys::poke _batterylevel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timetoempty
       (sys::poke _timetoempty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; char _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _batterylevel
     (setq _batterylevel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timetoempty
     (setq _timetoempty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; char _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ngimu::NGIMUBattery :md5sum-) "63290f8e8f182b4ff13b69cfdd440f29")
(setf (get ngimu::NGIMUBattery :datatype-) "ngimu/NGIMUBattery")
(setf (get ngimu::NGIMUBattery :definition-)
      "Header header
float32 batterylevel
float32 timetoempty
float32 voltage
float32 current
char state

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



(provide :ngimu/NGIMUBattery "63290f8e8f182b4ff13b69cfdd440f29")


