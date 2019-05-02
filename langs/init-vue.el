(require 'vue-mode)
(defun vue-hook ()
  (setq js-indent-level 2)
  (setq tab-width 2)
  (setq indent-tabs-mode nil)
  )

(add-hook 'vue-mode-hook 'vue-hook)
(provide 'init-vue)


