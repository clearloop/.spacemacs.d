;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://stable.melpa.org/packages/") t))
;; many packages won't show if using stable
;; '("melpa" . "http://melpa.milkbox.net/packages/")

;; <ELPA>
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository

;; <Init>
;; Added by Package.el.  This must come before configurations of   
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;; <Variables>
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages
   (quote
    (go-mode swift-mode company company-quickhelp racer toml-mode dockerfile-mode markdown-mode yaml-mode web-mode rust-mode))))


;; <Faces>
(custom-set-faces
 ;; menu-bar
 (menu-bar-mode 0) 
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; <Config>
;; key-bind
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)

;; dir
(put 'dired-find-alternate-file 'disabled nil)
(make-directory "~/.emacs.d/backups/" t)


;; <Langs>
;; web
;; require
(require 'web-mode)

;; indent
(setq tab-width 2)
(setq default-tab-width 2)
(setq indent-tabs-mode t)
(setq-default indent-tabs-mode nil) 
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; auto use web-mode to .js
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; use js as jsx
(setq web-mode-content-types-alist
      '(("jsx" . "\\.[jt]s[x]?\\'")))

;; engine
(setq web-mode-engines-alist '(("ruby" . "\\.erb\\'")))


;; rust
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)

(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)


