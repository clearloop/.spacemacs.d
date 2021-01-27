;; variables
(setq-default tab-width 4)
(setq-default typescript-indent-level 2)
(setq x-select-enable-clipboard t)
;; (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; config
(xterm-mouse-mode -1)

;; hooks
(add-hook 'org-mode-hook #'org-config-fill-prefix)
