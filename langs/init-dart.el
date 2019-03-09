;; dart.el
(require 'dart-mode)

(defun auto-reload ()
  (if (file-exists-p "/tmp/flutter.pid")
      (shell-command "kill -s SIGUSR1 $(cat /tmp/flutter.pid) && echo 'file saved and sent SIGUSR1 to flutter...'")
      ))

(add-hook 'dart-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'auto-reload nil 'make-it-local)))

(provide 'init-dart)
