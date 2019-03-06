;; rust
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

;; rust-mode
(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;; commands
(defun rust-run ()
  (interactive) (shell-command "cargo run"))

(add-hook
 'rust-mode
 (local-set-key (kbd "C-c '") 'rust-run))

(provide 'init-rust)
