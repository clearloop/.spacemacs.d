;; multiple cursors
(require 'multiple-cursors)
(bind-key* "C-c l" 'mc/edit-lines)

;; lines
(bind-key*
 "M-n"
 (lambda () (interactive)
   (setq this-command 'next-line)
   (next-line 5)))

(bind-key*
 "M-p"
 (lambda () (interactive)
   (setq this-command 'previous-line)
   (previous-line 5)))

;; shell
(bind-key* "M-s M-s" 'shell)
(provide 'init-config)
