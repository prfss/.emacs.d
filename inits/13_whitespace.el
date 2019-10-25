(use-package whitespace
  :diminish global-whitespace-mode
  :config
  (setq whitespace-action '(auto-cleanup))
  (setq whitespace-style '(face empty indentation tabs tab-mark trailing))
  (let ((my/bg-color (face-background 'default)))
    (set-face-attribute 'whitespace-empty nil
                        :foreground "DeepPink"
                        :background my/bg-color
                        :underline t)
    (set-face-attribute 'whitespace-indentation nil
                        :foreground "Cyan"
                        :background my/bg-color
                        :underline t)
    (set-face-attribute 'whitespace-trailing nil
                        :foreground "DeepPink"
                        :background my/bg-color
                        :underline t)
    (set-face-attribute 'whitespace-tab nil
                        :inherit whitespace-indentation))
  (global-whitespace-mode 1))
