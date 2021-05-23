(defsystem taylor-series
  :name "taylor-series"
  :author "Thomas HOULLIER"
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "taylor-series" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "taylor-series/test"))))

(defsystem taylor-series/test
  :name "taylor-series/test"
  :depends-on ("rove" "taylor-series")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
