;; rust
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

;; rust-mode
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
(setq rust-format-on-save t)

;; commands
(define-key rust-mode-map (kbd "C-c '") 'rust-run)
(defun rust-run ()
  (interactive) (shell-command "cargo run"))

(provide 'init-rust)
