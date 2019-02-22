; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUHumidity.msg.html

(cl:defclass <NGIMUHumidity> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0))
)

(cl:defclass NGIMUHumidity (<NGIMUHumidity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUHumidity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUHumidity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUHumidity> is deprecated: use ngimu-msg:NGIMUHumidity instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUHumidity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <NGIMUHumidity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:humidity-val is deprecated.  Use ngimu-msg:humidity instead.")
  (humidity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUHumidity>) ostream)
  "Serializes a message object of type '<NGIMUHumidity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUHumidity>) istream)
  "Deserializes a message object of type '<NGIMUHumidity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humidity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUHumidity>)))
  "Returns string type for a message object of type '<NGIMUHumidity>"
  "ngimu/NGIMUHumidity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUHumidity)))
  "Returns string type for a message object of type 'NGIMUHumidity"
  "ngimu/NGIMUHumidity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUHumidity>)))
  "Returns md5sum for a message object of type '<NGIMUHumidity>"
  "e2c04cbee6a587b40522f7590b7843a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUHumidity)))
  "Returns md5sum for a message object of type 'NGIMUHumidity"
  "e2c04cbee6a587b40522f7590b7843a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUHumidity>)))
  "Returns full string definition for message of type '<NGIMUHumidity>"
  (cl:format cl:nil "Header header~%float32 humidity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUHumidity)))
  "Returns full string definition for message of type 'NGIMUHumidity"
  (cl:format cl:nil "Header header~%float32 humidity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUHumidity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUHumidity>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUHumidity
    (cl:cons ':header (header msg))
    (cl:cons ':humidity (humidity msg))
))
