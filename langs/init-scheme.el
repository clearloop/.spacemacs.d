;; scheme

(require 'scheme)

(define-key scheme-mode-map (kbd "C-c '") 'scheme-exec)
(defun scheme-exec ()
  "Run scheme scripts."
  (interactive)
  (shell-command (format "scheme --script %s" buffer-file-name)))

(provide 'init-scheme)
