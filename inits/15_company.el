(el-get-bundle company-mode)
(use-package company
  :diminish
  :config
  (let ((bg (face-attribute 'default :background))
        (name-common (face-attribute 'font-lock-function-name-face :foreground))
        (annotation (face-attribute 'font-lock-type-face :foreground))
        )
    (custom-set-faces
     `(company-tooltip ((t :background ,(color-lighten-name bg 3))))
     `(company-tooltip-common ((t :foreground ,name-common :weight bold)))
     `(company-tooltip-annotation ((t :foreground ,annotation)))
     `(company-tooltip-selection ((t :inherit region)))
     `(company-scrollbar-fg ((t :background "#b0b0b0")))
     `(company-scrollbar-bg ((t :background "#808080")))
     ))
  (global-company-mode))
