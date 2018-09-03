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
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
;; dir
;; (put 'dired-find-alternate-file 'disabled nil)
;; (make-directory "~/.emacs.d/backups/" t)
;; (put 'downcase-region 'disabled nil)

;; <Variables>
;;(menu-bar-mode 0)
;;(set-face-background 'mode-line "transparent")
(custom-set-variables
 (menu-bar-mode 0)
 (set-face-background 'mode-line "transparent")
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages
   (quote
    (go-autocomplete company-racer robe mmm-mode inf-ruby go-mode swift-mode company company-quickhelp racer toml-mode dockerfile-mode markdown-mode yaml-mode web-mode rust-mode))))

;; <Face>
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; paths
(add-to-list 'load-path "~/.emacs.d/langs")
(require 'init-web)
(require 'init-rust)
(require 'init-ruby)
(require 'init-go)
