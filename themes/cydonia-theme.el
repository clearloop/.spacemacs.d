(deftheme cydonia
  "Created 2020-04-05.")

;; face sheet
(custom-theme-set-faces
 'cydonia
 ;; vendors
 '(default ((t (:family "default" :foundry "default" :width normal :height 1 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "white" :background "black" :stipple nil :inherit nil))))
 '(cursor ((t (:background "red"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#268bd2" :inherit (bold)))))
 '(highlight ((t (:background "#000069"))))
 '(region ((t (:background "#000093"))))
 '(shadow ((t (:foreground "#585858"))))
 '(secondary-selection ((t (:background "#121212"))))
 '(trailing-whitespace ((t (:background "#008787"))))

 ;; font-lock
 ;; keep default settings
 '(font-lock-builtin-face ((t (:foreground "dark slate blue"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:slant normal :background "#0c0c0c" :foreground "#6f6f6f"))))
 '(font-lock-constant-face ((t (:foreground "#afafaf"))))
 '(font-lock-doc-face ((t (:slant normal :background "#0c0c0c" :foreground "#6f6f6f"))))
 '(font-lock-function-name-face ((t (:foreground "#af875f"))))
 '(font-lock-keyword-face ((t (:slant normal :foreground "#d75fd7"))))
 '(font-lock-negation-char-face ((t (:foreground "#d75fd7"))))
 '(font-lock-preprocessor-face ((t (:foreground "dark slate blue"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "VioletRed4"))))
 '(font-lock-type-face ((t (:foreground "#268bd2"))))
 '(font-lock-variable-name-face ((t (:foreground "#8787d7"))))
 '(font-lock-warning-face ((t (:foreground "#dc752f" :background "#262626"))))

 ;;  event components
 '(button ((t (:inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#008787"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#d75fd7"))))
 '(fringe ((t (:background "black" :foreground "#b2b2b2"))))
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
