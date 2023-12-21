;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_autorace_msgs::DetectResult)
  (if (not (find-package "TURTLEBOT3_AUTORACE_MSGS"))
    (make-package "TURTLEBOT3_AUTORACE_MSGS"))
  (shadow 'DetectResult (find-package "TURTLEBOT3_AUTORACE_MSGS")))
(unless (find-package "TURTLEBOT3_AUTORACE_MSGS::DETECTRESULT")
  (make-package "TURTLEBOT3_AUTORACE_MSGS::DETECTRESULT"))

(in-package "ROS")
;;//! \htmlinclude DetectResult.msg.html


(defclass turtlebot3_autorace_msgs::DetectResult
  :super ros::object
  :slots (_label _x _y _width _height ))

(defmethod turtlebot3_autorace_msgs::DetectResult
  (:init
   (&key
    ((:label __label) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get turtlebot3_autorace_msgs::DetectResult :md5sum-) "4a586ac5639038eb78db980bd409a7e6")
(setf (get turtlebot3_autorace_msgs::DetectResult :datatype-) "turtlebot3_autorace_msgs/DetectResult")
(setf (get turtlebot3_autorace_msgs::DetectResult :definition-)
      "string label
float64 x
float64 y
float64 width
float64 height

")



(provide :turtlebot3_autorace_msgs/DetectResult "4a586ac5639038eb78db980bd409a7e6")


