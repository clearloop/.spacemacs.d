(bind-keys*
 ;; window operating
 ("M-n" . next-5-lines)
 ("M-p" . prev-5-lines)
 ("C-q c" . create-frame)
 ("C-q d" . delete-frame)
 ("C-q p" . prev-frame)
 ("C-q n" . next-frame)
 ("C-q h" . next-window-x)
 ("C-q l" . prev-window)
 ("C-q j" . evil-window-down)
 ("C-q k" . evil-window-up)
 ("C-q o" . spacemacs/alternate-window)
 ("C-q M-l" . shrink-10-units-horizontally)
 ("C-q M-h" . enlarge-10-units-horizontally)
 ("C-q M-k" . shrink-10-units)
 ("C-q M-j" . enlarge-10-units)

 ;; others
 ("C-c '" . neotree-toggle-x)
 ("C-c ;" . comment-line)
 ("C-c k" . kill-whole-line)
 )
