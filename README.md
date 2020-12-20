# clearloop/.spacemacs.d

Light config about `spacemacs` and my `dotfile` stuffs.

## Install

```shell
mv ~/.emacs.d ~/.emacs.d.bak
git clone https://github.com/syl20bnr/spacemacs.git emacs.d
git clone https://github.com/clearloop/.spacemacs.d.git
```

## `init.el`
```lisp
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Instantiate Spacemacs layers declarations and package configurations."
  (setq-default
   dotspacemacs-distribution 'spacemacs-base
   dotspacemacs-configuration-layers '(cydonia)
   dotspacemacs-additional-packages '(graphql-mode jest (wat-mode :location local))
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
  (require 'wat-mode)
  "Configuration that cannot be delegated to layers.")

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
```

## Keybindings
```lisp
(bind-keys*
 ;; window operating
 ("M-n" . next-5-lines)
 ("M-p" . prev-5-lines)
 ("M-e h" . evil-window-left)
 ("M-e l" . evil-window-right)
 ("M-e j" . evil-window-down)
 ("M-e k" . evil-window-up)
 ("M-e M-h" . shrink-10-units-horizontally)
 ("M-e M-l" . enlarge-10-units-horizontally)
 ("M-e M-k" . shrink-10-units)
 ("M-e M-j" . enlarge-10-units)
 ("M-e c" . create-frame)
 ("M-e d" . delete-frame)
 ("M-e p" . other-frame)
 ("M-e TAB" . spacemacs/alternate-window)

 ;; others
 ("C-c '" . neotree-toggle-x)
 ("C-c ;" . comment-line)
 ("C-c k" . kill-whole-line)
 )
```
