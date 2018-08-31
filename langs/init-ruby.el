;; ruby

;; Init
(add-hook 'ruby-mode-hook 'robe-mode)
;; Completion
(eval-after-load 'company
  '(push 'company-robe company-backends))
;; auto-complete
(add-hook 'robe-mode-hook 'ac-robe-setup)
;; Integration with rvm.el
;; (defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
;;   (rvm-activate-corresponding-ruby))

;; set-key
(require 'robe)
(define-key robe-mode-map (kbd "TAB") #'complete-symbol)
(define-key robe-mode-map (kbd "C-c C-s") #'inf-ruby-console-auto)

(provide 'init-ruby)
