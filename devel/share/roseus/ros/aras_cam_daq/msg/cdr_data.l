;; Auto-generated. Do not edit!


(when (boundp 'aras_cam_daq::cdr_data)
  (if (not (find-package "ARAS_CAM_DAQ"))
    (make-package "ARAS_CAM_DAQ"))
  (shadow 'cdr_data (find-package "ARAS_CAM_DAQ")))
(unless (find-package "ARAS_CAM_DAQ::CDR_DATA")
  (make-package "ARAS_CAM_DAQ::CDR_DATA"))

(in-package "ROS")
;;//! \htmlinclude cdr_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aras_cam_daq::cdr_data
  :super ros::object
  :slots (_header _knob _encoders _forces _TS ))

(defmethod aras_cam_daq::cdr_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:knob __knob) 0)
    ((:encoders __encoders) (make-array 0 :initial-element 0 :element-type :integer))
    ((:forces __forces) (make-array 0 :initial-element 0 :element-type :integer))
    ((:TS __TS) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _knob (round __knob))
   (setq _encoders __encoders)
   (setq _forces __forces)
   (setq _TS __TS)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:knob
   (&optional __knob)
   (if __knob (setq _knob __knob)) _knob)
  (:encoders
   (&optional __encoders)
   (if __encoders (setq _encoders __encoders)) _encoders)
  (:forces
   (&optional __forces)
   (if __forces (setq _forces __forces)) _forces)
  (:TS
   (&optional __TS)
   (if __TS (setq _TS __TS)) _TS)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _knob
    4
    ;; int32[] _encoders
    (* 4    (length _encoders)) 4
    ;; int32[] _forces
    (* 4    (length _forces)) 4
    ;; uint64[] _TS
    (* 8    (length _TS)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _knob
       (write-long _knob s)
     ;; int32[] _encoders
     (write-long (length _encoders) s)
     (dotimes (i (length _encoders))
       (write-long (elt _encoders i) s)
       )
     ;; int32[] _forces
     (write-long (length _forces) s)
     (dotimes (i (length _forces))
       (write-long (elt _forces i) s)
       )
     ;; uint64[] _TS
     (write-long (length _TS) s)
     (dotimes (i (length _TS))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _TS i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _TS i)) (= (length ((elt _TS i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _TS i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _TS i) . bv) 1) -1) s))
             ((and (class (elt _TS i)) (= (length ((elt _TS i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _TS i) . bv) 0) s)
              (write-long (if (>= (elt _TS i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _TS i) s)(write-long (if (>= (elt _TS i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _knob
     (setq _knob (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _encoders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoders (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _encoders i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _forces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forces (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _forces i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint64[] _TS
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _TS (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _TS i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _TS i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get aras_cam_daq::cdr_data :md5sum-) "2a6aeaab60b5a774977b1106284e3002")
(setf (get aras_cam_daq::cdr_data :datatype-) "aras_cam_daq/cdr_data")
(setf (get aras_cam_daq::cdr_data :definition-)
      "Header header
int32                    knob
int32[]                  encoders
int32[]                  forces
uint64[]                 TS


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



(provide :aras_cam_daq/cdr_data "2a6aeaab60b5a774977b1106284e3002")


