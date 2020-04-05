# clearloop/.spacemacs.d

Light config about `spacemacs` and my `dotfile` stuffs.

## Install

```shell
mv ~/.emacs.d ~/.emacs.d.bak
git clone https://github.com/syl20bnr/spacemacs.git
git clone https://github.com/clearloop/.spacemacs.d.git
```

## Emacs configs
```lisp
;;; Spacemacs/user-*

(defun dotspacemacs/user-init ()
  "Package independent settings to run before `dotspacemacs/user-config'."
  (add-to-list 'custom-theme-load-path "~/.spacemacs.d/themes")
  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))
  (setq custom-file "~/.spacemacs.d/.custom.el"))

(defun dotspacemacs/user-config ()
  "Configuration that cannot be delegated to layers."
  (xterm-mouse-mode -1)
  )
```

## Keybindings
```lisp
(bind-keys*
 ("M-n" . next-5-lines)
 ("M-p" . prev-5-lines)
 ("M-{" . shrink-10-units)
 ("M-}" . enlarge-10-units)
 )
```
