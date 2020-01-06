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

;; (bind-key*
;;  "M-["
;;  (lambda () (interactive)
;;    (setq this-command 'shrink-window-horizontally)
;;    (shrink-window-horizontally 5)))
;; 
;; (bind-key*
;;  "M-]"
;;  (lambda () (interactive)
;;    (setq this-command 'enlarge-window-horizontally)
;;    (enlarge-window-horizontally 5)))

(bind-key* "M-s M-s" 'shell)
(provide 'init-config)
