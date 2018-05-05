;; Added by Package.el.  This must come before configurations of   
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages
   (quote
    (racket-mode ace-window dockerfile-mode vue-html-mode vue-mode company-solidity flymake-solidity solidity-mode ob-typescript tide ts-comint tss typescript-mode common-lisp-snippets flymd markdown-mode jekyll-modes flymake-yaml yaml-mode gotest s dash f go-tag go-playground exec-path-from-shell web-mode rust-mode go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://stable.melpa.org/packages/") t))
;; many packages won't show if using stable
;; '("melpa" . "http://melpa.milkbox.net/packages/")

;; ELPA
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
(package-initialize)

;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;

;; yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(global-visual-line-mode 1)

;; jsx
(require 'web-mode)

;; auto use web-mode to .js
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?" . web-mode))

;; use js as jsx
(setq web-mode-content-types-alist
      '(("jsx" . "\\.[jt]s[x]?\\'")))

;; indent
(setq tab-width 2)
(setq default-tab-width 2)
(setq indent-tabs-mode t)
(setq-default indent-tabs-mode nil) 
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; key bind 
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(put 'dired-find-alternate-file 'disabled nil)

;;emacs auto-save
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
                                        ; create the autosave dir if necessary, since emacs won't.
;;(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)
                                        ; put files

;; menu-bar
(menu-bar-mode 0)

;; speed-bar
(speedbar 1)
(setq sr-speedbar-auto-refresh nil)
(setq speedbar-show-unknown-files t) ; show all files
(setq speedbar-use-images nil) ; use text for buttons
(setq sr-speedbar-right-side nil) ; put on left side

;; ace-window
(global-set-key (kbd "M-o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
                
