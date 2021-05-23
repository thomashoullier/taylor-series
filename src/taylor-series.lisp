(in-package :taylor-series)

;;; atan
(defun atan-maclaurin (x eps)
  "Evaluate atan using maclaurin series expansion up to arbitrary remainder
   smaller than eps.
   Return the value as well as the upper bound for the truncation error."
  (when (or (<= x -1) (>= x 1))
    (error "-1 < x < 1 must be true for the maclaurin series of atan."))
  (let ((sum (atan-maclaurin-term x 1))
        (next-term (atan-maclaurin-term x 2))
        (n 2))
    (loop while (>= (abs next-term) eps) do
      ;; abs(next-term) is also the truncation error upper bound.
      (incf sum next-term)
      (setf next-term (atan-maclaurin-term x (incf n))))
    (values sum (abs next-term))))

(defun atan-maclaurin-term (x n)
  "Atan MacLaurin expansion single term. f(x) is n=1, f'(x) is n=2 etc."
  (/ (* (if (oddp n) 1 -1) (expt x (1- (* 2 n))))
     (1- (* 2 n))))
