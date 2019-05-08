; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude NumArray.msg.html

(cl:defclass <NumArray> (roslisp-msg-protocol:ros-message)
  ((window
    :reader window
    :initarg :window
    :type (cl:vector beginner_tutorials-msg:Num)
   :initform (cl:make-array 0 :element-type 'beginner_tutorials-msg:Num :initial-element (cl:make-instance 'beginner_tutorials-msg:Num))))
)

(cl:defclass NumArray (<NumArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NumArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NumArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<NumArray> is deprecated: use beginner_tutorials-msg:NumArray instead.")))

(cl:ensure-generic-function 'window-val :lambda-list '(m))
(cl:defmethod window-val ((m <NumArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:window-val is deprecated.  Use beginner_tutorials-msg:window instead.")
  (window m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NumArray>) ostream)
  "Serializes a message object of type '<NumArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'window))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'window))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NumArray>) istream)
  "Deserializes a message object of type '<NumArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'window) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'window)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'beginner_tutorials-msg:Num))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NumArray>)))
  "Returns string type for a message object of type '<NumArray>"
  "beginner_tutorials/NumArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NumArray)))
  "Returns string type for a message object of type 'NumArray"
  "beginner_tutorials/NumArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NumArray>)))
  "Returns md5sum for a message object of type '<NumArray>"
  "b201c82cac6bab33355fc0478375d517")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NumArray)))
  "Returns md5sum for a message object of type 'NumArray"
  "b201c82cac6bab33355fc0478375d517")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NumArray>)))
  "Returns full string definition for message of type '<NumArray>"
  (cl:format cl:nil "Num[] window~%~%================================================================================~%MSG: beginner_tutorials/Num~%int64 xpos~%int64 ypos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NumArray)))
  "Returns full string definition for message of type 'NumArray"
  (cl:format cl:nil "Num[] window~%~%================================================================================~%MSG: beginner_tutorials/Num~%int64 xpos~%int64 ypos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NumArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'window) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NumArray>))
  "Converts a ROS message object to a list"
  (cl:list 'NumArray
    (cl:cons ':window (window msg))
))
