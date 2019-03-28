(require 'typescript-mode)
(defun ts-hook ()
  (setq typescript-indent-level 2))
(add-hook 'typescript-mode-hook 'ts-hook)

(provide 'init-ts)
