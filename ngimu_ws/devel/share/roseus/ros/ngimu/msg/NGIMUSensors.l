;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUSensors)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUSensors (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUSENSORS")
  (make-package "NGIMU::NGIMUSENSORS"))

(in-package "ROS")
;;//! \htmlinclude NGIMUSensors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUSensors
  :super ros::object
  :slots (_header _gyroscopeX _gyroscopeY _gyroscopeZ _accelerometerX _accelerometerY _accelerometerZ _magnetometerX _magnetometerY _magnetometerZ _barometer ))

(defmethod ngimu::NGIMUSensors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gyroscopeX __gyroscopeX) 0.0)
    ((:gyroscopeY __gyroscopeY) 0.0)
    ((:gyroscopeZ __gyroscopeZ) 0.0)
    ((:accelerometerX __accelerometerX) 0.0)
    ((:accelerometerY __accelerometerY) 0.0)
    ((:accelerometerZ __accelerometerZ) 0.0)
    ((:magnetometerX __magnetometerX) 0.0)
    ((:magnetometerY __magnetometerY) 0.0)
    ((:magnetometerZ __magnetometerZ) 0.0)
    ((:barometer __barometer) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gyroscopeX (float __gyroscopeX))
   (setq _gyroscopeY (float __gyroscopeY))
   (setq _gyroscopeZ (float __gyroscopeZ))
   (setq _accelerometerX (float __accelerometerX))
   (setq _accelerometerY (float __accelerometerY))
   (setq _accelerometerZ (float __accelerometerZ))
   (setq _magnetometerX (float __magnetometerX))
   (setq _magnetometerY (float __magnetometerY))
   (setq _magnetometerZ (float __magnetometerZ))
   (setq _barometer (float __barometer))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gyroscopeX
   (&optional __gyroscopeX)
   (if __gyroscopeX (setq _gyroscopeX __gyroscopeX)) _gyroscopeX)
  (:gyroscopeY
   (&optional __gyroscopeY)
   (if __gyroscopeY (setq _gyroscopeY __gyroscopeY)) _gyroscopeY)
  (:gyroscopeZ
   (&optional __gyroscopeZ)
   (if __gyroscopeZ (setq _gyroscopeZ __gyroscopeZ)) _gyroscopeZ)
  (:accelerometerX
   (&optional __accelerometerX)
   (if __accelerometerX (setq _accelerometerX __accelerometerX)) _accelerometerX)
  (:accelerometerY
   (&optional __accelerometerY)
   (if __accelerometerY (setq _accelerometerY __accelerometerY)) _accelerometerY)
  (:accelerometerZ
   (&optional __accelerometerZ)
   (if __accelerometerZ (setq _accelerometerZ __accelerometerZ)) _accelerometerZ)
  (:magnetometerX
   (&optional __magnetometerX)
   (if __magnetometerX (setq _magnetometerX __magnetometerX)) _magnetometerX)
  (:magnetometerY
   (&optional __magnetometerY)
   (if __magnetometerY (setq _magnetometerY __magnetometerY)) _magnetometerY)
  (:magnetometerZ
   (&optional __magnetometerZ)
   (if __magnetometerZ (setq _magnetometerZ __magnetometerZ)) _magnetometerZ)
  (:barometer
   (&optional __barometer)
   (if __barometer (setq _barometer __barometer)) _barometer)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _gyroscopeX
    4
    ;; float32 _gyroscopeY
    4
    ;; float32 _gyroscopeZ
    4
    ;; float32 _accelerometerX
    4
    ;; float32 _accelerometerY
    4
    ;; float32 _accelerometerZ
    4
    ;; float32 _magnetometerX
    4
    ;; float32 _magnetometerY
    4
    ;; float32 _magnetometerZ
    4
    ;; float32 _barometer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _gyroscopeX
       (sys::poke _gyroscopeX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroscopeY
       (sys::poke _gyroscopeY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroscopeZ
       (sys::poke _gyroscopeZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerometerX
       (sys::poke _accelerometerX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerometerY
       (sys::poke _accelerometerY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerometerZ
       (sys::poke _accelerometerZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magnetometerX
       (sys::poke _magnetometerX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magnetometerY
       (sys::poke _magnetometerY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magnetometerZ
       (sys::poke _magnetometerZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _barometer
       (sys::poke _barometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _gyroscopeX
     (setq _gyroscopeX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroscopeY
     (setq _gyroscopeY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroscopeZ
     (setq _gyroscopeZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerometerX
     (setq _accelerometerX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerometerY
     (setq _accelerometerY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerometerZ
     (setq _accelerometerZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetometerX
     (setq _magnetometerX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetometerY
     (setq _magnetometerY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magnetometerZ
     (setq _magnetometerZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _barometer
     (setq _barometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ngimu::NGIMUSensors :md5sum-) "45f09260ad0d83cd715dfa3ebd097b05")
(setf (get ngimu::NGIMUSensors :datatype-) "ngimu/NGIMUSensors")
(setf (get ngimu::NGIMUSensors :definition-)
      "Header header
float32 gyroscopeX
float32 gyroscopeY
float32 gyroscopeZ
float32 accelerometerX
float32 accelerometerY
float32 accelerometerZ
float32 magnetometerX
float32 magnetometerY
float32 magnetometerZ
float32 barometer

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



(provide :ngimu/NGIMUSensors "45f09260ad0d83cd715dfa3ebd097b05")


