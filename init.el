;; <MELPA>
;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://stable.melpa.org/packages/") t))
;; many packages won't show if using stable
;; '("melpa" . "http://melpa.milkbox.net/packages/")
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
(package-initialize)

;; <Init>
;; Added by Package.el.  This must come before configurations of   
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; <Config>
;; key-bind
;;(global-set-key (kbd "C-x <up>") 'windmove-up)
;;(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-c ]") 'shrink-window-horizontally)
(global-set-key (kbd "C-c [") 'enlarge-window-horizontally)
;; replaces forward-sentence
(global-set-key
 (kbd "M-n")
 (lambda () (interactive)
   (setq this-command 'next-line)
   (next-line 5)))

;; replaces backward-sentence
(global-set-key
 (kbd "M-p")
 (lambda ()
   (interactive)
   (setq this-command 'previous-line)
   (previous-line 5)))

;; dir
;; (put 'dired-find-alternate-file 'disabled nil)
;; (make-directory "~/.emacs.d/backups/" t)
;; (put 'downcase-region 'disabled nil)

;; <Variables>
(menu-bar-mode 0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(nil nil t)
 '(package-selected-packages
   (quote
    (gitignore-mode rust-playground c-eldoc elpy company-racer racer markdown-mode company-go poly-markdown go-autocomplete robe mmm-mode inf-ruby go-mode swift-mode company company-quickhelp toml-mode dockerfile-mode yaml-mode web-mode rust-mode))))

;; <Face>
;(set-face-foreground 'mode-line "transparent")
(set-face-background 'mode-line "transparent")
;(set-face-foreground 'mode-line-inactive "transparent")
(set-face-background 'mode-line-inactive "transparent")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; <Indent>
(setq-default
 c-default-style "bsd"
 c-syntactic-indentation t
 c-basic-offset 2
 c-basic-indent 2
 c-tab-always-indent t)
(c-set-offset 'brace-list-open 0)

;; <Paths>
(add-to-list 'load-path "~/.emacs.d/langs")
(require 'init-web)
(require 'init-rust)
(require 'init-ruby)
(require 'init-go)

;; <Self>
