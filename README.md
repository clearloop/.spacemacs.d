# README

## Install
```
curl https://raw.githubusercontent.com/clearloop/.emacs.d/master/.dotfiles/install -sSf | sh
```

## Decoration
```lisp
(set-face-background 'mode-line "transparent")
(set-face-background 'mode-line-inactive "transparent")
```

## Global Shortcuts
| Kbd         | Usage                          |
|-------------|--------------------------------|
| `M-n`       | ('next-line 5)                 |
| `M-p`       | ('previous-line 5)             |
| `C-c` `[`   | ('enlarge-window-horizontally) |
| `C-c` `]`   | ('shrink-window-horizontally)  |
| `M-s` `M-s` | ('shell)                       |
| `M-s` `M-e` | ('shell-command)               |

## Languages
+ [go](./langes/init-go.el)
+ [web](./langes/init-web.el)
+ [ruby](./langes/init-ruby.el)
+ [rust](./langes/init-rust.el)
+ [dart](./langes/init-dart.el)

