;; Auto-generated. Do not edit!


(when (boundp 'ngimu::NGIMUAuxserial)
  (if (not (find-package "NGIMU"))
    (make-package "NGIMU"))
  (shadow 'NGIMUAuxserial (find-package "NGIMU")))
(unless (find-package "NGIMU::NGIMUAUXSERIAL")
  (make-package "NGIMU::NGIMUAUXSERIAL"))

(in-package "ROS")
;;//! \htmlinclude NGIMUAuxserial.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ngimu::NGIMUAuxserial
  :super ros::object
  :slots (_header _message1 ))

(defmethod ngimu::NGIMUAuxserial
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message1 __message1) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _message1 (round __message1))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:message1
   (&optional __message1)
   (if __message1 (setq _message1 __message1)) _message1)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; char _message1
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; char _message1
       (write-byte _message1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; char _message1
     (setq _message1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ngimu::NGIMUAuxserial :md5sum-) "457a1a31d716e60a93d0e0a2484d0096")
(setf (get ngimu::NGIMUAuxserial :datatype-) "ngimu/NGIMUAuxserial")
(setf (get ngimu::NGIMUAuxserial :definition-)
      "Header header
char message1

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



(provide :ngimu/NGIMUAuxserial "457a1a31d716e60a93d0e0a2484d0096")


