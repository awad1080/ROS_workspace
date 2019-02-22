; Auto-generated. Do not edit!


(cl:in-package ngimu-msg)


;//! \htmlinclude NGIMURotationMatrix.msg.html

(cl:defclass <NGIMURotationMatrix> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (xx
    :reader xx
    :initarg :xx
    :type cl:float
    :initform 0.0)
   (xy
    :reader xy
    :initarg :xy
    :type cl:float
    :initform 0.0)
   (xz
    :reader xz
    :initarg :xz
    :type cl:float
    :initform 0.0)
   (yx
    :reader yx
    :initarg :yx
    :type cl:float
    :initform 0.0)
   (yy
    :reader yy
    :initarg :yy
    :type cl:float
    :initform 0.0)
   (yz
    :reader yz
    :initarg :yz
    :type cl:float
    :initform 0.0)
   (zx
    :reader zx
    :initarg :zx
    :type cl:float
    :initform 0.0)
   (zy
    :reader zy
    :initarg :zy
    :type cl:float
    :initform 0.0)
   (zz
    :reader zz
    :initarg :zz
    :type cl:float
    :initform 0.0))
)

(cl:defclass NGIMURotationMatrix (<NGIMURotationMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NGIMURotationMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NGIMURotationMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ngimu-msg:<NGIMURotationMatrix> is deprecated: use ngimu-msg:NGIMURotationMatrix instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:header-val is deprecated.  Use ngimu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'xx-val :lambda-list '(m))
(cl:defmethod xx-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:xx-val is deprecated.  Use ngimu-msg:xx instead.")
  (xx m))

(cl:ensure-generic-function 'xy-val :lambda-list '(m))
(cl:defmethod xy-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:xy-val is deprecated.  Use ngimu-msg:xy instead.")
  (xy m))

(cl:ensure-generic-function 'xz-val :lambda-list '(m))
(cl:defmethod xz-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:xz-val is deprecated.  Use ngimu-msg:xz instead.")
  (xz m))

(cl:ensure-generic-function 'yx-val :lambda-list '(m))
(cl:defmethod yx-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:yx-val is deprecated.  Use ngimu-msg:yx instead.")
  (yx m))

(cl:ensure-generic-function 'yy-val :lambda-list '(m))
(cl:defmethod yy-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:yy-val is deprecated.  Use ngimu-msg:yy instead.")
  (yy m))

(cl:ensure-generic-function 'yz-val :lambda-list '(m))
(cl:defmethod yz-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:yz-val is deprecated.  Use ngimu-msg:yz instead.")
  (yz m))

(cl:ensure-generic-function 'zx-val :lambda-list '(m))
(cl:defmethod zx-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:zx-val is deprecated.  Use ngimu-msg:zx instead.")
  (zx m))

(cl:ensure-generic-function 'zy-val :lambda-list '(m))
(cl:defmethod zy-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:zy-val is deprecated.  Use ngimu-msg:zy instead.")
  (zy m))

(cl:ensure-generic-function 'zz-val :lambda-list '(m))
(cl:defmethod zz-val ((m <NGIMURotationMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ngimu-msg:zz-val is deprecated.  Use ngimu-msg:zz instead.")
  (zz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NGIMURotationMatrix>) ostream)
  "Serializes a message object of type '<NGIMURotationMatrix>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NGIMURotationMatrix>) istream)
  "Deserializes a message object of type '<NGIMURotationMatrix>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NGIMURotationMatrix>)))
  "Returns string type for a message object of type '<NGIMURotationMatrix>"
  "ngimu/NGIMURotationMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NGIMURotationMatrix)))
  "Returns string type for a message object of type 'NGIMURotationMatrix"
  "ngimu/NGIMURotationMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NGIMURotationMatrix>)))
  "Returns md5sum for a message object of type '<NGIMURotationMatrix>"
  "4b3a9a788418885a37b0855fd9c38d8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NGIMURotationMatrix)))
  "Returns md5sum for a message object of type 'NGIMURotationMatrix"
  "4b3a9a788418885a37b0855fd9c38d8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NGIMURotationMatrix>)))
  "Returns full string definition for message of type '<NGIMURotationMatrix>"
  (cl:format cl:nil "Header header~%float32 xx~%float32 xy~%float32 xz~%float32 yx~%float32 yy~%float32 yz~%float32 zx~%float32 zy~%float32 zz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NGIMURotationMatrix)))
  "Returns full string definition for message of type 'NGIMURotationMatrix"
  (cl:format cl:nil "Header header~%float32 xx~%float32 xy~%float32 xz~%float32 yx~%float32 yy~%float32 yz~%float32 zx~%float32 zy~%float32 zz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NGIMURotationMatrix>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NGIMURotationMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'NGIMURotationMatrix
    (cl:cons ':header (header msg))
    (cl:cons ':xx (xx msg))
    (cl:cons ':xy (xy msg))
    (cl:cons ':xz (xz msg))
    (cl:cons ':yx (yx msg))
    (cl:cons ':yy (yy msg))
    (cl:cons ':yz (yz msg))
    (cl:cons ':zx (zx msg))
    (cl:cons ':zy (zy msg))
    (cl:cons ':zz (zz msg))
))
