(deftheme dark2
  "Created 2019-04-10.")

(custom-theme-set-faces
 'dark2
 '(default ((t (:family "Ricty Diminished" :foundry "PfEd" :width normal :height 132 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#efefef" :background "gray18" :stipple nil :inherit nil))))
 '(cursor ((t (:foreground "black" :background "#fff5f5"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "deep sky blue"))))
 '(highlight ((((class color) (min-colors 88) (background light)) (:background "darkseagreen2")) (((class color) (min-colors 88) (background dark)) (:background "darkolivegreen")) (((class color) (min-colors 16) (background light)) (:background "darkseagreen2")) (((class color) (min-colors 16) (background dark)) (:background "darkolivegreen")) (((class color) (min-colors 8)) (:foreground "black" :background "green")) (t (:inverse-video t))))
 '(region ((t (:background "#505050"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:inherit (region)))))
 '(trailing-whitespace ((t (:background "indian red"))))
 '(font-lock-builtin-face ((t (:foreground "DarkOrange1"))))
 '(font-lock-comment-delimiter-face ((t (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#9fafbf"))))
 '(font-lock-constant-face ((t (:box nil :foreground "#ff8040"))))
 '(font-lock-doc-face ((t (:foreground "#87cefa"))))
 '(font-lock-function-name-face ((t (:weight bold :foreground "#66d9ef"))))
 '(font-lock-keyword-face ((t (:foreground "#f92672"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:foreground "#bfff00"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "light goldenrod"))))
 '(font-lock-type-face ((t (:foreground "#ae8eff"))))
 '(font-lock-variable-name-face ((t (:inherit (font-lock-function-name-face)))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#ee4327"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "deep sky blue"))))
 '(link-visited ((t (:foreground "violet" :inherit (link)))))
 '(fringe ((t (:inherit (default)))))
 '(header-line ((t (:box nil :foreground "grey90" :background "grey20" :inherit (mode-line)))))
 '(tooltip ((t (:foreground "black" :background "lightyellow" :inherit (variable-pitch)))))
 '(mode-line ((t (:box nil :foreground "white" :background "OliveDrab3"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:weight light :box nil :foreground "grey20" :background "grey90" :inherit (mode-line)))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:foreground "lightskyblue1" :background "magenta3")) (((class color) (min-colors 88) (background dark)) (:foreground "brown4" :background "palevioletred2")) (((class color) (min-colors 16)) (:foreground "cyan1" :background "magenta4")) (((class color) (min-colors 8)) (:foreground "cyan1" :background "magenta4")) (t (:inverse-video t))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "paleturquoise")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "turquoise3")) (((class color) (min-colors 8)) (:background "turquoise3")) (t (:underline (:color foreground-color :style line)))))
 '(match ((t (:background "RoyalBlue2"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'dark2)
