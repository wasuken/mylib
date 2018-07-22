;; (require \'asdf)
 
 (in-package :cl-user)
 (defpackage mylib-asd
 (:use :cl :asdf))
 (in-package :mylib-asd)
 
 (defsystem :mylib
 :version "1.0.0"
 :author "wasu"
 :license "MIT"
 :components ((:file "package")
 (:module "src" :components ((:file "mylib")))))

