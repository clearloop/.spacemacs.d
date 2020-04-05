;; mouse scroll
(if (load "mwheel" t)
    (mwheel-install))

;; next-lines
(bind-key*
 "M-n"
 (lambda () (interactive)
   (setq this-command 'next-line)
   (next-line 5)))

;; prev-lines
(bind-key*
 "M-p"
 (lambda () (interactive)
   (setq this-command 'previous-line)
   (previous-line 5)))

(provide 'cydonia-kbd)
