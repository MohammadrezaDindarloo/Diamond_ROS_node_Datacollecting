
(cl:in-package :asdf)

(defsystem "aras_cam_daq-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "cdr_data" :depends-on ("_package_cdr_data"))
    (:file "_package_cdr_data" :depends-on ("_package"))
    (:file "diamond" :depends-on ("_package_diamond"))
    (:file "_package_diamond" :depends-on ("_package"))
    (:file "matlab_data" :depends-on ("_package_matlab_data"))
    (:file "_package_matlab_data" :depends-on ("_package"))
  ))