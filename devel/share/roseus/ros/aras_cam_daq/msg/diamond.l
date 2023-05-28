;; Auto-generated. Do not edit!


(when (boundp 'aras_cam_daq::diamond)
  (if (not (find-package "ARAS_CAM_DAQ"))
    (make-package "ARAS_CAM_DAQ"))
  (shadow 'diamond (find-package "ARAS_CAM_DAQ")))
(unless (find-package "ARAS_CAM_DAQ::DIAMOND")
  (make-package "ARAS_CAM_DAQ::DIAMOND"))

(in-package "ROS")
;;//! \htmlinclude diamond.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aras_cam_daq::diamond
  :super ros::object
  :slots (_header _Turq _Encoders _IMU _TS ))

(defmethod aras_cam_daq::diamond
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Turq __Turq) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Encoders __Encoders) (make-array 0 :initial-element 0 :element-type :integer))
    ((:IMU __IMU) (make-array 0 :initial-element 0 :element-type :integer))
    ((:TS __TS) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Turq __Turq)
   (setq _Encoders __Encoders)
   (setq _IMU __IMU)
   (setq _TS __TS)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Turq
   (&optional __Turq)
   (if __Turq (setq _Turq __Turq)) _Turq)
  (:Encoders
   (&optional __Encoders)
   (if __Encoders (setq _Encoders __Encoders)) _Encoders)
  (:IMU
   (&optional __IMU)
   (if __IMU (setq _IMU __IMU)) _IMU)
  (:TS
   (&optional __TS)
   (if __TS (setq _TS __TS)) _TS)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _Turq
    (* 4    (length _Turq)) 4
    ;; int32[] _Encoders
    (* 4    (length _Encoders)) 4
    ;; int16[] _IMU
    (* 2    (length _IMU)) 4
    ;; uint64[] _TS
    (* 8    (length _TS)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _Turq
     (write-long (length _Turq) s)
     (dotimes (i (length _Turq))
       (write-long (elt _Turq i) s)
       )
     ;; int32[] _Encoders
     (write-long (length _Encoders) s)
     (dotimes (i (length _Encoders))
       (write-long (elt _Encoders i) s)
       )
     ;; int16[] _IMU
     (write-long (length _IMU) s)
     (dotimes (i (length _IMU))
       (write-word (elt _IMU i) s)
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
   ;; int32[] _Turq
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Turq (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Turq i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _Encoders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Encoders (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Encoders i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int16[] _IMU
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _IMU (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _IMU i) (sys::peek buf ptr- :short)) (incf ptr- 2)
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

(setf (get aras_cam_daq::diamond :md5sum-) "08a19a8bb047aab7f948074955b487b4")
(setf (get aras_cam_daq::diamond :datatype-) "aras_cam_daq/diamond")
(setf (get aras_cam_daq::diamond :definition-)
      "Header header
int32[]                  Turq
int32[]                  Encoders
int16[]                  IMU
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



(provide :aras_cam_daq/diamond "08a19a8bb047aab7f948074955b487b4")


