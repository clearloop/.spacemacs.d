(require 'markdown-mode)
(add-hook 'text-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq tab-width 2)))

(provide 'init-md)
