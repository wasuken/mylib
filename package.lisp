;; (in-package :cl-user)
(defpackage mylib
  (:use :cl)
  (:export :read-file-to-list :read-file-to-first-line
		   :range :get-format-date :take :rangep))
