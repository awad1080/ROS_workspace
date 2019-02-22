; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUAuxserial.msg.html

(cl:defclass <NGIMUAuxserial> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (message1
    :reader message1
    :initarg :message1
    :type cl:integer
    :initform 0))
)

(cl:defclass NGIMUAuxserial (<NGIMUAuxserial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUAuxserial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUAuxserial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUAuxserial> is deprecated: use ngimu-msg:NGIMUAuxserial instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUAuxserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'message1-val :lambda-list '(m))
(cl:defmethod message1-val ((m <NGIMUAuxserial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:message1-val is deprecated.  Use ngimu-msg:message1 instead.")
  (message1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUAuxserial>) ostream)
  "Serializes a message object of type '<NGIMUAuxserial>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUAuxserial>) istream)
  "Deserializes a message object of type '<NGIMUAuxserial>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUAuxserial>)))
  "Returns string type for a message object of type '<NGIMUAuxserial>"
  "ngimu/NGIMUAuxserial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUAuxserial)))
  "Returns string type for a message object of type 'NGIMUAuxserial"
  "ngimu/NGIMUAuxserial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUAuxserial>)))
  "Returns md5sum for a message object of type '<NGIMUAuxserial>"
  "457a1a31d716e60a93d0e0a2484d0096")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUAuxserial)))
  "Returns md5sum for a message object of type 'NGIMUAuxserial"
  "457a1a31d716e60a93d0e0a2484d0096")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUAuxserial>)))
  "Returns full string definition for message of type '<NGIMUAuxserial>"
  (cl:format cl:nil "Header header~%char message1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUAuxserial)))
  "Returns full string definition for message of type 'NGIMUAuxserial"
  (cl:format cl:nil "Header header~%char message1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUAuxserial>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUAuxserial>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUAuxserial
    (cl:cons ':header (header msg))
    (cl:cons ':message1 (message1 msg))
))
