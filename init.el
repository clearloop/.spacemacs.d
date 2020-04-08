;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Instantiate Spacemacs layers declarations and package configurations."
  (setq-default
   dotspacemacs-distribution 'spacemacs-base
   dotspacemacs-configuration-layers
   '(;; core
     ivy syntax-checking better-defaults auto-completion
     ;; Mark ups
     yaml markdown neotree git shell
     ;; languages
     go rust python javascript shell-scripts
     (typescript :variables typescript-fmt-on-save t)
     ;; self-configs
     cydonia)
   dotspacemacs-additional-packages '()
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '(cydonia-theme)
   ))

;;; Spacemacs/init

(defun dotspacemacs/init ()
  "Instantiate Spacemacs core settings."
  (setq-default
   dotspacemacs-themes '(cydonia)
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'emacs
   dotspacemacs-persistent-server t
   dotspacemacs-whitespace-cleanup 'all
   dotspacemacs-mode-line-theme 'spacemacs
   ;; The following are unchanged but are still required for reloading via
   ;; 'SPC f e R' `dotspacemacs/sync-configuration-layers' to not throw warnings
   dotspacemacs-emacs-leader-key  "M-m"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-leader-key        "SPC"
   ))

;;; Spacemacs/user-*

(defun dotspacemacs/user-init ()
  "Package independent settings to run before `dotspacemacs/user-config'."
  (add-to-list 'custom-theme-load-path "~/.spacemacs.d/themes")
  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))
  (setq custom-file "~/.spacemacs.d/.custom.el"))

(defun dotspacemacs/user-config ()
  "Configuration that cannot be delegated to layers."
  (xterm-mouse-mode -1))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
