(setq-default tab-width 4)
(setq-default typescript-indent-level 4)

;; config
(xterm-mouse-mode -1)

;; hooks
(add-hook 'org-mode-hook #'org-config-fill-prefix)
