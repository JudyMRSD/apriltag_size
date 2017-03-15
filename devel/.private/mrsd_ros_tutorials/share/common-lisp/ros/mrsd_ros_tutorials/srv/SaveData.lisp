; Auto-generated. Do not edit!


(cl:in-package mrsd_ros_tutorials-srv)


;//! \htmlinclude SaveData-request.msg.html

(cl:defclass <SaveData-request> (roslisp-msg-protocol:ros-message)
  ((item_number
    :reader item_number
    :initarg :item_number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SaveData-request (<SaveData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrsd_ros_tutorials-srv:<SaveData-request> is deprecated: use mrsd_ros_tutorials-srv:SaveData-request instead.")))

(cl:ensure-generic-function 'item_number-val :lambda-list '(m))
(cl:defmethod item_number-val ((m <SaveData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrsd_ros_tutorials-srv:item_number-val is deprecated.  Use mrsd_ros_tutorials-srv:item_number instead.")
  (item_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveData-request>) ostream)
  "Serializes a message object of type '<SaveData-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'item_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'item_number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveData-request>) istream)
  "Deserializes a message object of type '<SaveData-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'item_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'item_number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveData-request>)))
  "Returns string type for a service object of type '<SaveData-request>"
  "mrsd_ros_tutorials/SaveDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveData-request)))
  "Returns string type for a service object of type 'SaveData-request"
  "mrsd_ros_tutorials/SaveDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveData-request>)))
  "Returns md5sum for a message object of type '<SaveData-request>"
  "3203921452ac5bc1e9326c0f5244e435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveData-request)))
  "Returns md5sum for a message object of type 'SaveData-request"
  "3203921452ac5bc1e9326c0f5244e435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveData-request>)))
  "Returns full string definition for message of type '<SaveData-request>"
  (cl:format cl:nil "uint16 item_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveData-request)))
  "Returns full string definition for message of type 'SaveData-request"
  (cl:format cl:nil "uint16 item_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveData-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveData-request
    (cl:cons ':item_number (item_number msg))
))
;//! \htmlinclude SaveData-response.msg.html

(cl:defclass <SaveData-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SaveData-response (<SaveData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrsd_ros_tutorials-srv:<SaveData-response> is deprecated: use mrsd_ros_tutorials-srv:SaveData-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SaveData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrsd_ros_tutorials-srv:status-val is deprecated.  Use mrsd_ros_tutorials-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveData-response>) ostream)
  "Serializes a message object of type '<SaveData-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveData-response>) istream)
  "Deserializes a message object of type '<SaveData-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveData-response>)))
  "Returns string type for a service object of type '<SaveData-response>"
  "mrsd_ros_tutorials/SaveDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveData-response)))
  "Returns string type for a service object of type 'SaveData-response"
  "mrsd_ros_tutorials/SaveDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveData-response>)))
  "Returns md5sum for a message object of type '<SaveData-response>"
  "3203921452ac5bc1e9326c0f5244e435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveData-response)))
  "Returns md5sum for a message object of type 'SaveData-response"
  "3203921452ac5bc1e9326c0f5244e435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveData-response>)))
  "Returns full string definition for message of type '<SaveData-response>"
  (cl:format cl:nil "uint64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveData-response)))
  "Returns full string definition for message of type 'SaveData-response"
  (cl:format cl:nil "uint64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveData-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveData-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveData)))
  'SaveData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveData)))
  'SaveData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveData)))
  "Returns string type for a service object of type '<SaveData>"
  "mrsd_ros_tutorials/SaveData")