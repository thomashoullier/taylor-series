(defpackage :taylor-series/test
  (:use :cl :rove :taylor-series))
(in-package :taylor-series/test)

(deftest validation
  (testing "atan-maclaurin"
    (let* ((x 1/5)
           (eps (expt 1/10 18))
           (error-budget 1d-16)
           (valid-val (atan (coerce x 'double-float))))
      (ok (< (abs (- (atan-maclaurin x eps) valid-val))
             error-budget) "Double-float approx.")
      (ok (reduce
           (lambda (x y) (and x y))
           (loop for epsexpt in '(1 4 8 14)
                 collect (<= (abs (- (atan-maclaurin x (expt 1/10 epsexpt))
                                     valid-val))
                             (expt 1/10 epsexpt))))
          "Error bound vs double-float respected."))))
