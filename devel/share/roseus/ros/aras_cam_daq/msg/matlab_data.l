;; Auto-generated. Do not edit!


(when (boundp 'aras_cam_daq::matlab_data)
  (if (not (find-package "ARAS_CAM_DAQ"))
    (make-package "ARAS_CAM_DAQ"))
  (shadow 'matlab_data (find-package "ARAS_CAM_DAQ")))
(unless (find-package "ARAS_CAM_DAQ::MATLAB_DATA")
  (make-package "ARAS_CAM_DAQ::MATLAB_DATA"))

(in-package "ROS")
;;//! \htmlinclude matlab_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aras_cam_daq::matlab_data
  :super ros::object
  :slots (_header _encoders _forces _fk _motor_cmd _time_stamps ))

(defmethod aras_cam_daq::matlab_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoders __encoders) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:forces __forces) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fk __fk) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_cmd __motor_cmd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_stamps __time_stamps) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _encoders __encoders)
   (setq _forces __forces)
   (setq _fk __fk)
   (setq _motor_cmd __motor_cmd)
   (setq _time_stamps __time_stamps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:encoders
   (&optional __encoders)
   (if __encoders (setq _encoders __encoders)) _encoders)
  (:forces
   (&optional __forces)
   (if __forces (setq _forces __forces)) _forces)
  (:fk
   (&optional __fk)
   (if __fk (setq _fk __fk)) _fk)
  (:motor_cmd
   (&optional __motor_cmd)
   (if __motor_cmd (setq _motor_cmd __motor_cmd)) _motor_cmd)
  (:time_stamps
   (&optional __time_stamps)
   (if __time_stamps (setq _time_stamps __time_stamps)) _time_stamps)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _encoders
    (* 8    (length _encoders)) 4
    ;; float64[] _forces
    (* 8    (length _forces)) 4
    ;; float64[] _fk
    (* 8    (length _fk)) 4
    ;; float64[] _motor_cmd
    (* 8    (length _motor_cmd)) 4
    ;; uint64[] _time_stamps
    (* 8    (length _time_stamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _encoders
     (write-long (length _encoders) s)
     (dotimes (i (length _encoders))
       (sys::poke (elt _encoders i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _forces
     (write-long (length _forces) s)
     (dotimes (i (length _forces))
       (sys::poke (elt _forces i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _fk
     (write-long (length _fk) s)
     (dotimes (i (length _fk))
       (sys::poke (elt _fk i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_cmd
     (write-long (length _motor_cmd) s)
     (dotimes (i (length _motor_cmd))
       (sys::poke (elt _motor_cmd i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint64[] _time_stamps
     (write-long (length _time_stamps) s)
     (dotimes (i (length _time_stamps))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _time_stamps i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _time_stamps i)) (= (length ((elt _time_stamps i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _time_stamps i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _time_stamps i) . bv) 1) -1) s))
             ((and (class (elt _time_stamps i)) (= (length ((elt _time_stamps i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _time_stamps i) . bv) 0) s)
              (write-long (if (>= (elt _time_stamps i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _time_stamps i) s)(write-long (if (>= (elt _time_stamps i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _encoders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoders (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _encoders i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _forces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forces (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _forces i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _fk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fk (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fk i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_cmd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_cmd i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint64[] _time_stamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_stamps (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _time_stamps i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _time_stamps i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get aras_cam_daq::matlab_data :md5sum-) "d4d267f9647b57736b8787d57b74de03")
(setf (get aras_cam_daq::matlab_data :datatype-) "aras_cam_daq/matlab_data")
(setf (get aras_cam_daq::matlab_data :definition-)
      "Header header
float64[]                  encoders
float64[]                  forces
float64[]                  fk
float64[]                  motor_cmd
uint64[]		   time_stamps

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :aras_cam_daq/matlab_data "d4d267f9647b57736b8787d57b74de03")


