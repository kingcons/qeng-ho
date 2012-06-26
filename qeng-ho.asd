(defsystem #:qeng-ho
  :name "Qeng Ho"
  :description "Emulators as a Service!"
  :version "0.1"
  :license "BSD"
  :author "Brit Butler <redline6561@gmail.com>"
  :pathname "src/"
  :depends-on (#:restas #:st-json #:cl-6502)
  :serial t
  :components ((:file "package")
               (:file "qeng-ho"))
  :in-order-to ((test-op (load-op qeng-ho-tests)))
  :perform (test-op :after (op c)
                    (funcall (intern "RUN!" :qeng-ho-tests)
                             (intern "QENG-HO-TESTS"))))

(defsystem #:qeng-ho-tests
  :depends-on (qeng-ho fiveam)
  :pathname "tests/"
  :components ((:file "tests")))

(defmethod operation-done-p ((op test-op)
                             (c (eql (find-system :qeng-ho))))
  (values nil))
