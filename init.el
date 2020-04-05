;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Instantiate Spacemacs layers declarations and package configurations."
  (setq-default
   dotspacemacs-distribution 'spacemacs-base
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers")
   dotspacemacs-configuration-layers '((config :location local))
   dotspacemacs-additional-packages '()
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   ))

;; Spacemacs/init

(defun dotspacemacs/init ()
  "Instantiate Spacemacs core settings."
  (setq-default
   dotspacemacs-themes '(cydonia)
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'emacs
   ))

(defun dotspacemacs/user-init ()
  "Package independent settings to run before `dotspacemacs/user-config'."
  (setq custom-file "~/.spacemacs.d/custom.el"))

(defun dotspacemacs/user-config ()
  "Configuration that cannot be delegated to layers."
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable qdefinitions.
