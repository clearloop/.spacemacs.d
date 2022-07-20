;; variables
(setq-default tab-width 2)
(setq x-select-enable-clipboard t)

;; config
(xterm-mouse-mode -1)

;; hooks
(add-hook 'org-mode-hook #'org-config-fill-prefix)

