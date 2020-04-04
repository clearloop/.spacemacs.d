;;(setq python-indent-guess-indent-offset t)  
(setq python-indent-guess-indent-offset-verbose nil)

(add-hook 'python-mode-hook
	  (lambda ()
	    (setq-default indent-tabs-mode t)
	    (setq-default tab-width 4)
	    ))

(provide 'init-python)
