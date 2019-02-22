; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUTemperature.msg.html

(cl:defclass <NGIMUTemperature> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temp_processor
    :reader temp_processor
    :initarg :temp_processor
    :type cl:float
    :initform 0.0)
   (temp_gyro_accel
    :reader temp_gyro_accel
    :initarg :temp_gyro_accel
    :type cl:float
    :initform 0.0)
   (temp_barometer
    :reader temp_barometer
    :initarg :temp_barometer
    :type cl:float
    :initform 0.0))
)

(cl:defclass NGIMUTemperature (<NGIMUTemperature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUTemperature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUTemperature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUTemperature> is deprecated: use ngimu-msg:NGIMUTemperature instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUTemperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temp_processor-val :lambda-list '(m))
(cl:defmethod temp_processor-val ((m <NGIMUTemperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:temp_processor-val is deprecated.  Use ngimu-msg:temp_processor instead.")
  (temp_processor m))

(cl:ensure-generic-function 'temp_gyro_accel-val :lambda-list '(m))
(cl:defmethod temp_gyro_accel-val ((m <NGIMUTemperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:temp_gyro_accel-val is deprecated.  Use ngimu-msg:temp_gyro_accel instead.")
  (temp_gyro_accel m))

(cl:ensure-generic-function 'temp_barometer-val :lambda-list '(m))
(cl:defmethod temp_barometer-val ((m <NGIMUTemperature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:temp_barometer-val is deprecated.  Use ngimu-msg:temp_barometer instead.")
  (temp_barometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUTemperature>) ostream)
  "Serializes a message object of type '<NGIMUTemperature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp_processor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp_gyro_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp_barometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUTemperature>) istream)
  "Deserializes a message object of type '<NGIMUTemperature>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp_processor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp_gyro_accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp_barometer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUTemperature>)))
  "Returns string type for a message object of type '<NGIMUTemperature>"
  "ngimu/NGIMUTemperature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUTemperature)))
  "Returns string type for a message object of type 'NGIMUTemperature"
  "ngimu/NGIMUTemperature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUTemperature>)))
  "Returns md5sum for a message object of type '<NGIMUTemperature>"
  "d24d79a8d8f66d391e56b823cfb9b329")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUTemperature)))
  "Returns md5sum for a message object of type 'NGIMUTemperature"
  "d24d79a8d8f66d391e56b823cfb9b329")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUTemperature>)))
  "Returns full string definition for message of type '<NGIMUTemperature>"
  (cl:format cl:nil "Header header~%float32 temp_processor~%float32 temp_gyro_accel~%float32 temp_barometer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUTemperature)))
  "Returns full string definition for message of type 'NGIMUTemperature"
  (cl:format cl:nil "Header header~%float32 temp_processor~%float32 temp_gyro_accel~%float32 temp_barometer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUTemperature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUTemperature>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUTemperature
    (cl:cons ':header (header msg))
    (cl:cons ':temp_processor (temp_processor msg))
    (cl:cons ':temp_gyro_accel (temp_gyro_accel msg))
    (cl:cons ':temp_barometer (temp_barometer msg))
))
