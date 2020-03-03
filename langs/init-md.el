(require 'markdown-mode)
(add-hook 'text-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq tab-width 2)))

(add-to-list 'auto-mode-alist '("\\.adoc\\'" . markdown-mode))
(provide 'init-md)
