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
  (display-message "red alert")
  (apply-in-pane-process button
                         #'(setf titled-object-title)
                         "Missiles have been fired" button))

(setq button
      (make-instance 'push-button
                     :data "Push Me"
                     :background :ghostwhite
                     ;; mnemonic is the alt+<mnemonic-char> that can be pressed
                     ;; to activate the thinger.
                     :mnemonic #\P
                     :title "Launch the missiles"
                     :title-position :top
                     :callback #'red-alert))

;; (contain button)

(defvar tpane
  (make-instance 'title-pane
                 :text "GREETINGS, HUMANS"
                 :font (gp:make-font-description
                        :family "Ubuntu"
                        :size 24
                        :weight :medium)))

(defvar tpane2
  (make-instance 'title-pane
                 :text "GREETINGS, HUMANS"
                 :font (gp:make-font-description
                        :family "Helvetica"
                        :size 24
                        :weight :medium)))


