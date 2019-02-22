; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUSensors.msg.html

(cl:defclass <NGIMUSensors> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gyroscopeX
    :reader gyroscopeX
    :initarg :gyroscopeX
    :type cl:float
    :initform 0.0)
   (gyroscopeY
    :reader gyroscopeY
    :initarg :gyroscopeY
    :type cl:float
    :initform 0.0)
   (gyroscopeZ
    :reader gyroscopeZ
    :initarg :gyroscopeZ
    :type cl:float
    :initform 0.0)
   (accelerometerX
    :reader accelerometerX
    :initarg :accelerometerX
    :type cl:float
    :initform 0.0)
   (accelerometerY
    :reader accelerometerY
    :initarg :accelerometerY
    :type cl:float
    :initform 0.0)
   (accelerometerZ
    :reader accelerometerZ
    :initarg :accelerometerZ
    :type cl:float
    :initform 0.0)
   (magnetometerX
    :reader magnetometerX
    :initarg :magnetometerX
    :type cl:float
    :initform 0.0)
   (magnetometerY
    :reader magnetometerY
    :initarg :magnetometerY
    :type cl:float
    :initform 0.0)
   (magnetometerZ
    :reader magnetometerZ
    :initarg :magnetometerZ
    :type cl:float
    :initform 0.0)
   (barometer
    :reader barometer
    :initarg :barometer
    :type cl:float
    :initform 0.0))
)

(cl:defclass NGIMUSensors (<NGIMUSensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUSensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUSensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUSensors> is deprecated: use ngimu-msg:NGIMUSensors instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gyroscopeX-val :lambda-list '(m))
(cl:defmethod gyroscopeX-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:gyroscopeX-val is deprecated.  Use ngimu-msg:gyroscopeX instead.")
  (gyroscopeX m))

(cl:ensure-generic-function 'gyroscopeY-val :lambda-list '(m))
(cl:defmethod gyroscopeY-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:gyroscopeY-val is deprecated.  Use ngimu-msg:gyroscopeY instead.")
  (gyroscopeY m))

(cl:ensure-generic-function 'gyroscopeZ-val :lambda-list '(m))
(cl:defmethod gyroscopeZ-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:gyroscopeZ-val is deprecated.  Use ngimu-msg:gyroscopeZ instead.")
  (gyroscopeZ m))

(cl:ensure-generic-function 'accelerometerX-val :lambda-list '(m))
(cl:defmethod accelerometerX-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:accelerometerX-val is deprecated.  Use ngimu-msg:accelerometerX instead.")
  (accelerometerX m))

(cl:ensure-generic-function 'accelerometerY-val :lambda-list '(m))
(cl:defmethod accelerometerY-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:accelerometerY-val is deprecated.  Use ngimu-msg:accelerometerY instead.")
  (accelerometerY m))

(cl:ensure-generic-function 'accelerometerZ-val :lambda-list '(m))
(cl:defmethod accelerometerZ-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:accelerometerZ-val is deprecated.  Use ngimu-msg:accelerometerZ instead.")
  (accelerometerZ m))

(cl:ensure-generic-function 'magnetometerX-val :lambda-list '(m))
(cl:defmethod magnetometerX-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:magnetometerX-val is deprecated.  Use ngimu-msg:magnetometerX instead.")
  (magnetometerX m))

(cl:ensure-generic-function 'magnetometerY-val :lambda-list '(m))
(cl:defmethod magnetometerY-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:magnetometerY-val is deprecated.  Use ngimu-msg:magnetometerY instead.")
  (magnetometerY m))

(cl:ensure-generic-function 'magnetometerZ-val :lambda-list '(m))
(cl:defmethod magnetometerZ-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:magnetometerZ-val is deprecated.  Use ngimu-msg:magnetometerZ instead.")
  (magnetometerZ m))

(cl:ensure-generic-function 'barometer-val :lambda-list '(m))
(cl:defmethod barometer-val ((m <NGIMUSensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:barometer-val is deprecated.  Use ngimu-msg:barometer instead.")
  (barometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUSensors>) ostream)
  "Serializes a message object of type '<NGIMUSensors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroscopeX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroscopeY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroscopeZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerometerX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerometerY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerometerZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnetometerX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnetometerY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magnetometerZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'barometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUSensors>) istream)
  "Deserializes a message object of type '<NGIMUSensors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroscopeX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroscopeY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroscopeZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerometerX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerometerY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerometerZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnetometerX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnetometerY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magnetometerZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'barometer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUSensors>)))
  "Returns string type for a message object of type '<NGIMUSensors>"
  "ngimu/NGIMUSensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUSensors)))
  "Returns string type for a message object of type 'NGIMUSensors"
  "ngimu/NGIMUSensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUSensors>)))
  "Returns md5sum for a message object of type '<NGIMUSensors>"
  "45f09260ad0d83cd715dfa3ebd097b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUSensors)))
  "Returns md5sum for a message object of type 'NGIMUSensors"
  "45f09260ad0d83cd715dfa3ebd097b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUSensors>)))
  "Returns full string definition for message of type '<NGIMUSensors>"
  (cl:format cl:nil "Header header~%float32 gyroscopeX~%float32 gyroscopeY~%float32 gyroscopeZ~%float32 accelerometerX~%float32 accelerometerY~%float32 accelerometerZ~%float32 magnetometerX~%float32 magnetometerY~%float32 magnetometerZ~%float32 barometer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUSensors)))
  "Returns full string definition for message of type 'NGIMUSensors"
  (cl:format cl:nil "Header header~%float32 gyroscopeX~%float32 gyroscopeY~%float32 gyroscopeZ~%float32 accelerometerX~%float32 accelerometerY~%float32 accelerometerZ~%float32 magnetometerX~%float32 magnetometerY~%float32 magnetometerZ~%float32 barometer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUSensors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUSensors>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUSensors
    (cl:cons ':header (header msg))
    (cl:cons ':gyroscopeX (gyroscopeX msg))
    (cl:cons ':gyroscopeY (gyroscopeY msg))
    (cl:cons ':gyroscopeZ (gyroscopeZ msg))
    (cl:cons ':accelerometerX (accelerometerX msg))
    (cl:cons ':accelerometerY (accelerometerY msg))
    (cl:cons ':accelerometerZ (accelerometerZ msg))
    (cl:cons ':magnetometerX (magnetometerX msg))
    (cl:cons ':magnetometerY (magnetometerY msg))
    (cl:cons ':magnetometerZ (magnetometerZ msg))
    (cl:cons ':barometer (barometer msg))
))
