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

;; <Variables>
(menu-bar-mode 0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages
   (quote
    (systemd markdown-mode vimrc-mode multiple-cursors json-mode tide android-mode go-mode go-complete protobuf-mode bind-key company-nginx nginx-mode gitignore-mode c-eldoc elpy company-racer racer company-go robe mmm-mode inf-ruby company company-quickhelp toml-mode dockerfile-mode yaml-mode web-mode rust-mode))))

;; <Face>
(custom-set-faces
 (set-face-background 'mode-line nil)
 (set-face-background 'mode-line-inactive nil)
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
(require 'init-ac)
(require 'init-md)
(require 'init-go)
(require 'init-ts)
(require 'init-web)
(require 'init-dart)
(require 'init-rust)
(require 'init-ruby)
(require 'init-python)
(require 'init-scheme)
(require 'init-config)
