; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMUBattery.msg.html

(cl:defclass <NGIMUBattery> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (batterylevel
    :reader batterylevel
    :initarg :batterylevel
    :type cl:float
    :initform 0.0)
   (timetoempty
    :reader timetoempty
    :initarg :timetoempty
    :type cl:float
    :initform 0.0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass NGIMUBattery (<NGIMUBattery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMUBattery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMUBattery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMUBattery> is deprecated: use ngimu-msg:NGIMUBattery instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMUBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'batterylevel-val :lambda-list '(m))
(cl:defmethod batterylevel-val ((m <NGIMUBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:batterylevel-val is deprecated.  Use ngimu-msg:batterylevel instead.")
  (batterylevel m))

(cl:ensure-generic-function 'timetoempty-val :lambda-list '(m))
(cl:defmethod timetoempty-val ((m <NGIMUBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:timetoempty-val is deprecated.  Use ngimu-msg:timetoempty instead.")
  (timetoempty m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <NGIMUBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:voltage-val is deprecated.  Use ngimu-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <NGIMUBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:current-val is deprecated.  Use ngimu-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <NGIMUBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:state-val is deprecated.  Use ngimu-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMUBattery>) ostream)
  "Serializes a message object of type '<NGIMUBattery>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batterylevel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timetoempty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMUBattery>) istream)
  "Deserializes a message object of type '<NGIMUBattery>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batterylevel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timetoempty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMUBattery>)))
  "Returns string type for a message object of type '<NGIMUBattery>"
  "ngimu/NGIMUBattery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMUBattery)))
  "Returns string type for a message object of type 'NGIMUBattery"
  "ngimu/NGIMUBattery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMUBattery>)))
  "Returns md5sum for a message object of type '<NGIMUBattery>"
  "63290f8e8f182b4ff13b69cfdd440f29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMUBattery)))
  "Returns md5sum for a message object of type 'NGIMUBattery"
  "63290f8e8f182b4ff13b69cfdd440f29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMUBattery>)))
  "Returns full string definition for message of type '<NGIMUBattery>"
  (cl:format cl:nil "Header header~%float32 batterylevel~%float32 timetoempty~%float32 voltage~%float32 current~%char state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMUBattery)))
  "Returns full string definition for message of type 'NGIMUBattery"
  (cl:format cl:nil "Header header~%float32 batterylevel~%float32 timetoempty~%float32 voltage~%float32 current~%char state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMUBattery>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMUBattery>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMUBattery
    (cl:cons ':header (header msg))
    (cl:cons ':batterylevel (batterylevel msg))
    (cl:cons ':timetoempty (timetoempty msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':state (state msg))
))
