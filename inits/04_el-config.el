;;; load and configure emacs lisp

;;; flycheck
(el-get-bundle flycheck)
(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  ;;; prefer flymake in rust-mode
  (add-hook 'rust-mode-hook (lambda () (flycheck-mode -1)))
  (add-to-list 'flycheck-gcc-warnings "conversion")
  (add-to-list 'flycheck-clang-warnings "conversion")
  )

;;; shell
;; shell-mode
(add-hook 'shell-mode-hook
          (lambda ()
            (set-buffer-process-coding-system 'utf-8 'utf-8)))
;; terminal
(el-get-bundle multi-term)
(use-package multi-term
  :config (setq system-uses-terminfo nil))

;;; yasnippet
(el-get-bundle yasnippet)
(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand))

(el-get-bundle yasnippet-snippets)

;;; whitespace-mode
(use-package whitespace
  :diminish global-whitespace-mode
  :config
  (global-whitespace-mode 1)
  (setq whitespace-action '(auto-cleanup))
  (setq whitespace-style '(face trailing tabs empty))
  (let ((my/bg-color (face-background 'default)))
    (set-face-attribute 'whitespace-trailing nil
                        :foreground "DeepPink"
                        :background my/bg-color
                        :underline t)
    (set-face-attribute 'whitespace-tab nil
                        :foreground "Cyan"
                        :background my/bg-color
                        :underline t)
    (set-face-attribute 'whitespace-empty nil
                        :foreground "DeepPink"
                        :background my/bg-color
                        :underline t)))

(el-get-bundle helm)
(use-package helm
  :diminish helm-mode
  :bind (("M-x" . helm-M-x)))

;;; Company-mode
(el-get-bundle company-mode)
(use-package company
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
  (add-hook 'after-init-hook 'global-company-mode))

;;; neotree
(el-get-bundle neotree)
(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (global-set-key [f8] 'neotree-toggle))

;;; electric-pair-mode
(electric-pair-mode 1)
