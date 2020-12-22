(bind-keys*
 ;; window operating
 ("M-n" . next-5-lines)
 ("M-p" . prev-5-lines)
 ("M-w h" . evil-window-left)
 ("M-w l" . evil-window-right)
 ("M-w j" . evil-window-down)
 ("M-w k" . evil-window-up)
 ("M-w M-h" . shrink-10-units-horizontally)
 ("M-w M-l" . enlarge-10-units-horizontally)
 ("M-w M-k" . shrink-10-units)
 ("M-w M-j" . enlarge-10-units)
 ("M-w c" . create-frame)
 ("M-w d" . delete-frame)
 ("M-w p" . other-frame)
 ("M-w TAB" . spacemacs/alternate-window)

 ;; move
 ("C-a" . back-to-indentation)

 ;; others
 ("C-c '" . neotree-toggle-x)
 ("C-c ;" . comment-line)
 ("C-c k" . kill-whole-line)
 )
