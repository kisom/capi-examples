(in-package :cl-user)
(defpackage capi-examples
  (:use :cl :capi))
(in-package :capi-examples)

(setq interface
  (make-instance 'interface
                 :visible-min-width 600
                 :title "This here is an interface"))

;; (display interface)

(defun red-alert (&rest args)
  (display-message "red alert"))

(setq button
      (make-instance 'push-button
                     :data "Button"
                     :background :ghostwhite
                     :callback #'red-alert))

;; (contain button)

(defvar tpane
  (make-instance 'title-pane
                 :text "GREETINGS, HUMANS"
                 :font (gp:make-font-description
                        :family "Ubuntu"
                        :size 24
                        :weight :medium)))