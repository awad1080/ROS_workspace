;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMURotationMatrix)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMURotationMatrix (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUROTATIONMATRIX")
  (make-package "NGIMU::NGIMUROTATIONMATRIX"))

(in-package "ROS")
;;//! \htmlinclude NGIMURotationMatrix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMURotationMatrix
  :super ros::object
  :slots (_header _xx _xy _xz _yx _yy _yz _zx _zy _zz ))

(defmethod ngimu::NGIMURotationMatrix
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:xx __xx) 0.0)
    ((:xy __xy) 0.0)
    ((:xz __xz) 0.0)
    ((:yx __yx) 0.0)
    ((:yy __yy) 0.0)
    ((:yz __yz) 0.0)
    ((:zx __zx) 0.0)
    ((:zy __zy) 0.0)
    ((:zz __zz) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _xx (float __xx))
   (setq _xy (float __xy))
   (setq _xz (float __xz))
   (setq _yx (float __yx))
   (setq _yy (float __yy))
   (setq _yz (float __yz))
   (setq _zx (float __zx))
   (setq _zy (float __zy))
   (setq _zz (float __zz))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:xx
   (&optional __xx)
   (if __xx (setq _xx __xx)) _xx)
  (:xy
   (&optional __xy)
   (if __xy (setq _xy __xy)) _xy)
  (:xz
   (&optional __xz)
   (if __xz (setq _xz __xz)) _xz)
  (:yx
   (&optional __yx)
   (if __yx (setq _yx __yx)) _yx)
  (:yy
   (&optional __yy)
   (if __yy (setq _yy __yy)) _yy)
  (:yz
   (&optional __yz)
   (if __yz (setq _yz __yz)) _yz)
  (:zx
   (&optional __zx)
   (if __zx (setq _zx __zx)) _zx)
  (:zy
   (&optional __zy)
   (if __zy (setq _zy __zy)) _zy)
  (:zz
   (&optional __zz)
   (if __zz (setq _zz __zz)) _zz)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _xx
    4
    ;; float32 _xy
    4
    ;; float32 _xz
    4
    ;; float32 _yx
    4
    ;; float32 _yy
    4
    ;; float32 _yz
    4
    ;; float32 _zx
    4
    ;; float32 _zy
    4
    ;; float32 _zz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _xx
       (sys::poke _xx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xy
       (sys::poke _xy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xz
       (sys::poke _xz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yx
       (sys::poke _yx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yy
       (sys::poke _yy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yz
       (sys::poke _yz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zx
       (sys::poke _zx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zy
       (sys::poke _zy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zz
       (sys::poke _zz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _xx
     (setq _xx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xy
     (setq _xy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xz
     (setq _xz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yx
     (setq _yx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yy
     (setq _yy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yz
     (setq _yz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zx
     (setq _zx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zy
     (setq _zy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zz
     (setq _zz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ngimu::NGIMURotationMatrix :md5sum-) "4b3a9a788418885a37b0855fd9c38d8b")
(setf (get ngimu::NGIMURotationMatrix :datatype-) "ngimu/NGIMURotationMatrix")
(setf (get ngimu::NGIMURotationMatrix :definition-)
      "Header header
float32 xx
float32 xy
float32 xz
float32 yx
float32 yy
float32 yz
float32 zx
float32 zy
float32 zz

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



(provide :ngimu/NGIMURotationMatrix "4b3a9a788418885a37b0855fd9c38d8b")


