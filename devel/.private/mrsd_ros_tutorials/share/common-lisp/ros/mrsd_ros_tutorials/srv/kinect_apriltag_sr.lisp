; Auto-generated. Do not edit!


(cl:in-package mrsd_ros_tutorials-srv)


;//! \htmlinclude kinect_apriltag_sr-request.msg.html

(cl:defclass <kinect_apriltag_sr-request> (roslisp-msg-protocol:ros-message)
  ((item_number
    :reader item_number
    :initarg :item_number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass kinect_apriltag_sr-request (<kinect_apriltag_sr-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinect_apriltag_sr-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinect_apriltag_sr-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrsd_ros_tutorials-srv:<kinect_apriltag_sr-request> is deprecated: use mrsd_ros_tutorials-srv:kinect_apriltag_sr-request instead.")))

(cl:ensure-generic-function 'item_number-val :lambda-list '(m))
(cl:defmethod item_number-val ((m <kinect_apriltag_sr-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrsd_ros_tutorials-srv:item_number-val is deprecated.  Use mrsd_ros_tutorials-srv:item_number instead.")
  (item_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinect_apriltag_sr-request>) ostream)
  "Serializes a message object of type '<kinect_apriltag_sr-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'item_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'item_number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinect_apriltag_sr-request>) istream)
  "Deserializes a message object of type '<kinect_apriltag_sr-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'item_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'item_number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinect_apriltag_sr-request>)))
  "Returns string type for a service object of type '<kinect_apriltag_sr-request>"
  "mrsd_ros_tutorials/kinect_apriltag_srRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinect_apriltag_sr-request)))
  "Returns string type for a service object of type 'kinect_apriltag_sr-request"
  "mrsd_ros_tutorials/kinect_apriltag_srRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinect_apriltag_sr-request>)))
  "Returns md5sum for a message object of type '<kinect_apriltag_sr-request>"
  "505edc86eea6d47b3889e5b914d83993")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinect_apriltag_sr-request)))
  "Returns md5sum for a message object of type 'kinect_apriltag_sr-request"
  "505edc86eea6d47b3889e5b914d83993")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinect_apriltag_sr-request>)))
  "Returns full string definition for message of type '<kinect_apriltag_sr-request>"
  (cl:format cl:nil "uint16 item_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinect_apriltag_sr-request)))
  "Returns full string definition for message of type 'kinect_apriltag_sr-request"
  (cl:format cl:nil "uint16 item_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinect_apriltag_sr-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinect_apriltag_sr-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kinect_apriltag_sr-request
    (cl:cons ':item_number (item_number msg))
))
;//! \htmlinclude kinect_apriltag_sr-response.msg.html

(cl:defclass <kinect_apriltag_sr-response> (roslisp-msg-protocol:ros-message)
  ((point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass kinect_apriltag_sr-response (<kinect_apriltag_sr-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinect_apriltag_sr-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinect_apriltag_sr-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrsd_ros_tutorials-srv:<kinect_apriltag_sr-response> is deprecated: use mrsd_ros_tutorials-srv:kinect_apriltag_sr-response instead.")))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <kinect_apriltag_sr-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrsd_ros_tutorials-srv:point_cloud-val is deprecated.  Use mrsd_ros_tutorials-srv:point_cloud instead.")
  (point_cloud m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <kinect_apriltag_sr-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrsd_ros_tutorials-srv:status-val is deprecated.  Use mrsd_ros_tutorials-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinect_apriltag_sr-response>) ostream)
  "Serializes a message object of type '<kinect_apriltag_sr-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinect_apriltag_sr-response>) istream)
  "Deserializes a message object of type '<kinect_apriltag_sr-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinect_apriltag_sr-response>)))
  "Returns string type for a service object of type '<kinect_apriltag_sr-response>"
  "mrsd_ros_tutorials/kinect_apriltag_srResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinect_apriltag_sr-response)))
  "Returns string type for a service object of type 'kinect_apriltag_sr-response"
  "mrsd_ros_tutorials/kinect_apriltag_srResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinect_apriltag_sr-response>)))
  "Returns md5sum for a message object of type '<kinect_apriltag_sr-response>"
  "505edc86eea6d47b3889e5b914d83993")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinect_apriltag_sr-response)))
  "Returns md5sum for a message object of type 'kinect_apriltag_sr-response"
  "505edc86eea6d47b3889e5b914d83993")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinect_apriltag_sr-response>)))
  "Returns full string definition for message of type '<kinect_apriltag_sr-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 point_cloud~%uint64 status~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinect_apriltag_sr-response)))
  "Returns full string definition for message of type 'kinect_apriltag_sr-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 point_cloud~%uint64 status~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinect_apriltag_sr-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinect_apriltag_sr-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kinect_apriltag_sr-response
    (cl:cons ':point_cloud (point_cloud msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kinect_apriltag_sr)))
  'kinect_apriltag_sr-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kinect_apriltag_sr)))
  'kinect_apriltag_sr-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinect_apriltag_sr)))
  "Returns string type for a service object of type '<kinect_apriltag_sr>"
  "mrsd_ros_tutorials/kinect_apriltag_sr")