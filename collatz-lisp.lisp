;; #!/bin/sh
;; #|-*- mode:lisp -*-|#
;; #| <Put a one-line description here>
;; exec ros -Q -- $0 "$@"
;; |#
;; (progn ;;init forms
;;   )

;; (defpackage :ros.script.collatz-lisp.3679825193
;;   (:use :cl))
;; (in-package :ros.script.collatz-lisp.3679825193)

(defun main (&rest argv)
  (declare (ignorable argv)))

(defun collatz (n)
  (format t "~a ~C" n #\linefeed)
  (if (= 1 n)(format t "Back to one! ~C" #\linefeed)
      (cond ((oddp n) (collatz  (1+ (* n 3))))
            ((evenp n) (collatz (/ n 2)))
            )
      ))

(collatz 98)

  ;; (cond (= 1 n)
  ;;   ((oddp n) (1+ (* n 3)))
  ;;       ((evenp n) (/ n 2))
  ;;       )
;; (collatz 10)
;;; vim: set ft=lisp lisp:
