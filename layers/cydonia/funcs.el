(defun next-5-lines() (interactive)
       (setq this-command 'next-line)
       (next-line 5))

(defun prev-5-lines() (interactive)
       (setq this-command 'previous-line)
       (previous-line 5))

(defun shrink-10-units() (interactive)
       (setq this-command 'shrink-window-horizontally)
       ('shrink-window-horizontally 10))

(defun enlarge-10-units() (interactive)
       (setq this-command 'enlarge-window-horizontally)
       ('enlarge-window-horizontally 10))
