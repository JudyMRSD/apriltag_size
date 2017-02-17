
(cl:in-package :asdf)

(defsystem "mrsd_ros_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "kinect_apriltag_sr" :depends-on ("_package_kinect_apriltag_sr"))
    (:file "_package_kinect_apriltag_sr" :depends-on ("_package"))
    (:file "SaveData" :depends-on ("_package_SaveData"))
    (:file "_package_SaveData" :depends-on ("_package"))
  ))