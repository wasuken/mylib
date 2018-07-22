;; (require \'asdf)
 
 (in-package :cl-user)
 (defpackage mylib-test-asd
 (:use :cl :asdf))
 (in-package :mylib-test-asd)
 
 (defsystem mylib-test
 :depends-on (:mylib)
 :version "1.0.0"
 :author "wasu"
 :license "MIT"
 :components ((:module "t" :components ((:file "mylib-test"))))
 :perform (test-op :after (op c)
 (funcall (intern #.(string :run) :prove) c)))

