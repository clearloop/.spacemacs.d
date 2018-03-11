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
 '(package-selected-packages
   (quote
    (company-solidity flymake-solidity solidity-mode ob-typescript tide ts-comint tss typescript-mode common-lisp-snippets flymd markdown-mode jekyll-modes flymake-yaml yaml-mode gotest s dash f go-tag go-playground exec-path-from-shell web-mode rust-mode go-mode))))
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

;; yaml mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(global-visual-line-mode 1)

;; jsx

(require 'web-mode)

;; auto use web-mode to .js
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
;;(setq web-mode-content-types-alist
;;	  '(("jsx"  . "/project/dir/.*\\.js[x]?\\'")))
;;(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; use js as jsx
(setq web-mode-content-types-alist
	  '(("jsx" . "\\.js[x]?\\'")))

;; use ts as tsx
(setq web-mode-content-types-alist
	  '(("jsx" . "\\.ts[x]?\\'")))

;;;indent
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

;;lisp
;;(require 'init-paredit)
;;(require 'init-lisp)
;;(require 'init-slime)
;;(require 'init-clojure)
;;(require 'init-clojure-cider)

