;; web

;; require
(require 'web-mode)

;; indent
(setq tab-width 2)
(setq default-tab-width 2)
(setq indent-tabs-mode t)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq-default indent-tabs-mode nil) 

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




(provide 'init-web)
