(deftheme cydonia
  "Created 2020-04-05.")

(custom-theme-set-faces
 'cydonia
 ;; vendors
 '(cursor ((t (:background "red"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#268bd2" :inherit (bold)))))
 '(highlight ((t (:background "#000059"))))
 '(region ((t (:background "cyan"))))
 '(shadow ((t (:foreground "#585858"))))
 '(secondary-selection ((t (:background "#121212"))))
 '(trailing-whitespace ((t (:background "#008787"))))

 ;; font-lock
 ;; '(font-lock-builtin-face ((t (:foreground "#268bd2"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:background "#0a0a0a" :foreground "#6f6f6f"))))
 '(font-lock-constant-face ((t (:foreground "#d75fd7"))))
 '(font-lock-doc-face ((t (:foreground "#008787"))))
 '(font-lock-function-name-face ((t (:foreground "#268bd2" :inherit (bold)))))
 '(font-lock-keyword-face ((t (:foreground "#d75fd7" :inherit (bold)))))
 '(font-lock-negation-char-face ((t (:foreground "#d75fd7"))))
 '(font-lock-preprocessor-face ((t (:foreground "#d75fd7"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 ;; '(font-lock-string-face ((t (:foreground "#2aa198"))))
 '(font-lock-type-face ((t (:foreground "#df005f" :inherit (bold)))))
 '(font-lock-variable-name-face ((t (:foreground "#8787d7"))))
 '(font-lock-warning-face ((t (:foreground "#dc752f" :background "#262626"))))

 ;;  event components
 '(button ((t (:inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#008787"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#d75fd7"))))
 '(fringe ((t (:background "color-16" :foreground "brightblack"))))
 '(header-line ((t (:background "#080808"))))
 '(tooltip ((t (:weight normal :slant normal :underline nil :foreground "#b2b2b2" :background "#333333"))))

 ;; model line
 '(mode-line ((t (:box (:line-width 1 :color "#262626" :style nil) :foreground "black" :background "black"))))
 '(mode-line-buffer-id ((t (:foreground "#d75fd7" :inherit (bold)))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:box (:line-width 1 :color "#262626" :style nil) :foreground "#2f2f2f" :background "black"))))
 '(isearch ((t (:foreground "#262626" :background "#86dc2f"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:weight normal :background "#262626"))))
 '(match ((t (:foreground "#86dc2f" :background "#444444"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 )


(provide-theme 'cydonia)
