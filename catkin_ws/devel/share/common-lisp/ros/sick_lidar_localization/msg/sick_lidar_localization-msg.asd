
(cl:in-package :asdf)

(defsystem "sick_lidar_localization-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SickLocColaTelegramMsg" :depends-on ("_package_SickLocColaTelegramMsg"))
    (:file "_package_SickLocColaTelegramMsg" :depends-on ("_package"))
    (:file "SickLocDiagnosticMsg" :depends-on ("_package_SickLocDiagnosticMsg"))
    (:file "_package_SickLocDiagnosticMsg" :depends-on ("_package"))
    (:file "SickLocResultPortCrcMsg" :depends-on ("_package_SickLocResultPortCrcMsg"))
    (:file "_package_SickLocResultPortCrcMsg" :depends-on ("_package"))
    (:file "SickLocResultPortHeaderMsg" :depends-on ("_package_SickLocResultPortHeaderMsg"))
    (:file "_package_SickLocResultPortHeaderMsg" :depends-on ("_package"))
    (:file "SickLocResultPortPayloadMsg" :depends-on ("_package_SickLocResultPortPayloadMsg"))
    (:file "_package_SickLocResultPortPayloadMsg" :depends-on ("_package"))
    (:file "SickLocResultPortTelegramMsg" :depends-on ("_package_SickLocResultPortTelegramMsg"))
    (:file "_package_SickLocResultPortTelegramMsg" :depends-on ("_package"))
    (:file "SickLocResultPortTestcaseMsg" :depends-on ("_package_SickLocResultPortTestcaseMsg"))
    (:file "_package_SickLocResultPortTestcaseMsg" :depends-on ("_package"))
  ))