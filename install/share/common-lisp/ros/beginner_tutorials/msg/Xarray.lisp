; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Xarray.msg.html

(cl:defclass <Xarray> (roslisp-msg-protocol:ros-message)
  ((xarray
    :reader xarray
    :initarg :xarray
    :type cl:string
    :initform ""))
)

(cl:defclass Xarray (<Xarray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Xarray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Xarray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Xarray> is deprecated: use beginner_tutorials-msg:Xarray instead.")))

(cl:ensure-generic-function 'xarray-val :lambda-list '(m))
(cl:defmethod xarray-val ((m <Xarray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:xarray-val is deprecated.  Use beginner_tutorials-msg:xarray instead.")
  (xarray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Xarray>) ostream)
  "Serializes a message object of type '<Xarray>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'xarray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'xarray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Xarray>) istream)
  "Deserializes a message object of type '<Xarray>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xarray) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'xarray) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Xarray>)))
  "Returns string type for a message object of type '<Xarray>"
  "beginner_tutorials/Xarray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Xarray)))
  "Returns string type for a message object of type 'Xarray"
  "beginner_tutorials/Xarray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Xarray>)))
  "Returns md5sum for a message object of type '<Xarray>"
  "02fc735f4ec9f15170b20e31093b47d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Xarray)))
  "Returns md5sum for a message object of type 'Xarray"
  "02fc735f4ec9f15170b20e31093b47d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Xarray>)))
  "Returns full string definition for message of type '<Xarray>"
  (cl:format cl:nil "string xarray~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Xarray)))
  "Returns full string definition for message of type 'Xarray"
  (cl:format cl:nil "string xarray~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Xarray>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'xarray))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Xarray>))
  "Converts a ROS message object to a list"
  (cl:list 'Xarray
    (cl:cons ':xarray (xarray msg))
))
