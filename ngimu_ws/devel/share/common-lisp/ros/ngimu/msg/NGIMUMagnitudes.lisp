; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUMagnitudes.msg.html

(cl:defclass <NGIMUMagnitudes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mag_gyroscope
    :reader mag_gyroscope
    :initarg :mag_gyroscope
    :type cl:float
    :initform 0.0)
   (mag_accelerometer
    :reader mag_accelerometer
    :initarg :mag_accelerometer
    :type cl:float
    :initform 0.0)
   (mag_magnetometer
    :reader mag_magnetometer
    :initarg :mag_magnetometer
    :type cl:float
    :initform 0.0))
)

(cl:defclass NGIMUMagnitudes (<NGIMUMagnitudes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUMagnitudes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUMagnitudes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUMagnitudes> is deprecated: use ngimu-msg:NGIMUMagnitudes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUMagnitudes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mag_gyroscope-val :lambda-list '(m))
(cl:defmethod mag_gyroscope-val ((m <NGIMUMagnitudes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:mag_gyroscope-val is deprecated.  Use ngimu-msg:mag_gyroscope instead.")
  (mag_gyroscope m))

(cl:ensure-generic-function 'mag_accelerometer-val :lambda-list '(m))
(cl:defmethod mag_accelerometer-val ((m <NGIMUMagnitudes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:mag_accelerometer-val is deprecated.  Use ngimu-msg:mag_accelerometer instead.")
  (mag_accelerometer m))

(cl:ensure-generic-function 'mag_magnetometer-val :lambda-list '(m))
(cl:defmethod mag_magnetometer-val ((m <NGIMUMagnitudes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:mag_magnetometer-val is deprecated.  Use ngimu-msg:mag_magnetometer instead.")
  (mag_magnetometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUMagnitudes>) ostream)
  "Serializes a message object of type '<NGIMUMagnitudes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_gyroscope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_accelerometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_magnetometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUMagnitudes>) istream)
  "Deserializes a message object of type '<NGIMUMagnitudes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_gyroscope) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_accelerometer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_magnetometer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUMagnitudes>)))
  "Returns string type for a message object of type '<NGIMUMagnitudes>"
  "ngimu/NGIMUMagnitudes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUMagnitudes)))
  "Returns string type for a message object of type 'NGIMUMagnitudes"
  "ngimu/NGIMUMagnitudes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUMagnitudes>)))
  "Returns md5sum for a message object of type '<NGIMUMagnitudes>"
  "afa562698c740c0a2db1c9d9f6327002")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUMagnitudes)))
  "Returns md5sum for a message object of type 'NGIMUMagnitudes"
  "afa562698c740c0a2db1c9d9f6327002")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUMagnitudes>)))
  "Returns full string definition for message of type '<NGIMUMagnitudes>"
  (cl:format cl:nil "Header header~%float32 mag_gyroscope~%float32 mag_accelerometer~%float32 mag_magnetometer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUMagnitudes)))
  "Returns full string definition for message of type 'NGIMUMagnitudes"
  (cl:format cl:nil "Header header~%float32 mag_gyroscope~%float32 mag_accelerometer~%float32 mag_magnetometer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUMagnitudes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUMagnitudes>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUMagnitudes
    (cl:cons ':header (header msg))
    (cl:cons ':mag_gyroscope (mag_gyroscope msg))
    (cl:cons ':mag_accelerometer (mag_accelerometer msg))
    (cl:cons ':mag_magnetometer (mag_magnetometer msg))
))
