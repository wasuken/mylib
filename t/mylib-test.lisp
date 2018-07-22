(in-package :cl-user)
(defpackage mylib-test
  (:use :cl :prove :mylib))
(in-package #:mylib-test)

(plan 4)
(subtest "get-format-date"
  (like (get-format-date) "\\d+-\\d+-\\d+ \\d+:\\d+:\\d+"))
(subtest "read-file"
  (is (read-file-to-list "test-data/test.txt")
	  '("test" "dayo"))
  (is (read-file-to-first-line "test-data/test.txt")
	  "test"))
(subtest "range"
  (is (range 1 2) '(1 2))
  (is (range 1 10 2) '(1 3 5 7 9))
  (is (range 1 2 3) '(1)))
(subtest "take"
  (is (take '(1 2 3) 1) '(1))
  (is (take '(1 2 3) 2) '(1 2)))


(finalize)
