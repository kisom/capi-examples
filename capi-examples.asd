#|
  This file is a part of capi-examples project.
  Copyright (c) 2015 K. Isom
|#

#|
  Author: K. Isom
|#

(in-package :cl-user)
(defpackage capi-examples-asd
  (:use :cl :asdf))
(in-package :capi-examples-asd)

(defsystem capi-examples
  :version "0.1"
  :author "K. Isom"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "capi-examples"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op capi-examples-test))))
