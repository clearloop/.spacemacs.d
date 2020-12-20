(bind-keys*
 ;; window operating
 ("M-n" . next-5-lines)
 ("M-p" . prev-5-lines)
 ("M-e h" . evil-window-left)
 ("M-e l" . evil-window-right)
 ("M-e j" . evil-window-down)
 ("M-e k" . evil-window-up)
 ("M-e M-h" . shrink-10-units-horizontally)
 ("M-e M-l" . enlarge-10-units-horizontally)
 ("M-e M-k" . shrink-10-units)
 ("M-e M-j" . enlarge-10-units)
 ("M-e c" . create-frame)
 ("M-e d" . delete-frame)
 ("M-e p" . other-frame)
 ("M-e TAB" . spacemacs/alternate-window)

 ;; others
 ("C-c '" . neotree-toggle-x)
 ("C-c ;" . comment-line)
 ("C-c k" . kill-whole-line)
 )
