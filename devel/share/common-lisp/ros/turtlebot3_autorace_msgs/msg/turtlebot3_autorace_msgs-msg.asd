
(cl:in-package :asdf)

(defsystem "turtlebot3_autorace_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DetectResult" :depends-on ("_package_DetectResult"))
    (:file "_package_DetectResult" :depends-on ("_package"))
    (:file "MovingParam" :depends-on ("_package_MovingParam"))
    (:file "_package_MovingParam" :depends-on ("_package"))
  ))