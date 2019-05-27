(bind-key* "M-n" (lambda () (interactive)
    (setq this-command 'next-line)
    (next-line 5)))

(bind-key* "M-p" (lambda () (interactive)
    (setq this-command 'previous-line)
    (previous-line 5)))

(bind-key* "C-c ]" 'shrink-window-horizontally)
(bind-key* "C-c [" 'enlarge-window-horizontally)
(bind-key* "M-s M-s" 'shell)

(provide 'init-config)
