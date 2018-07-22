(in-package #:mylib)
;;; lazy使ったら面白いかも。
(defun read-file-to-list (filepath)
  (let ((lines '()))
    (with-open-file (in filepath)
      (loop for line = (read-line in nil)
         while line
         do (setf lines (append lines (list line)))))
    lines))

(defun read-file-to-first-line (filepath)
  (car (read-file-to-list filepath)))

(defun range (begin end &optional (step 1))
  (cond ((<= begin end)
		 (cons begin (range (+ begin step) end step)))
		(t nil)))

(defun get-format-date (&optional (later-day 0))
  (multiple-value-bind (sec min hour day mon year)
      (decode-universal-time (+ (get-universal-time)
                                (* 60 60 24 later-day)))
    (format nil "~D-~2,'0D-~2,'0D ~2,'0D:~2,'0D:~2,'0D" year mon day hour min sec)))

(defun take (lst n)
  (if (or (zerop n) (null lst))
      nil
      (cons (car lst) (take (cdr lst) (1- n)))))
