; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUAltitude.msg.html

(cl:defclass <NGIMUAltitude> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass NGIMUAltitude (<NGIMUAltitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUAltitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUAltitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUAltitude> is deprecated: use ngimu-msg:NGIMUAltitude instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUAltitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <NGIMUAltitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:altitude-val is deprecated.  Use ngimu-msg:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUAltitude>) ostream)
  "Serializes a message object of type '<NGIMUAltitude>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUAltitude>) istream)
  "Deserializes a message object of type '<NGIMUAltitude>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUAltitude>)))
  "Returns string type for a message object of type '<NGIMUAltitude>"
  "ngimu/NGIMUAltitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUAltitude)))
  "Returns string type for a message object of type 'NGIMUAltitude"
  "ngimu/NGIMUAltitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUAltitude>)))
  "Returns md5sum for a message object of type '<NGIMUAltitude>"
  "40947c0a61b4e5eba99666816495e944")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUAltitude)))
  "Returns md5sum for a message object of type 'NGIMUAltitude"
  "40947c0a61b4e5eba99666816495e944")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUAltitude>)))
  "Returns full string definition for message of type '<NGIMUAltitude>"
  (cl:format cl:nil "Header header~%float32 altitude~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUAltitude)))
  "Returns full string definition for message of type 'NGIMUAltitude"
  (cl:format cl:nil "Header header~%float32 altitude~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUAltitude>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUAltitude>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUAltitude
    (cl:cons ':header (header msg))
    (cl:cons ':altitude (altitude msg))
))
