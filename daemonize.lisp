(defpackage :daemonize
  (:use :cl))

(in-package :daemonize)

(defun system-path (symbol)
  (asdf:system-source-directory symbol))

(defun system-file (name system)
  (merge-pathnames name (system-path system)))

(load (system-file "contrib/restas-daemon.lisp" 'restas))
