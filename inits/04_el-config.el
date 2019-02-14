;;; load and configure emacs lisp

;;; flycheck
(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (add-to-list 'flycheck-gcc-warnings "conversion"))

;;; shell
;; shell-mode
(add-hook 'shell-mode-hook
          (lambda ()
            (set-buffer-process-coding-system 'utf-8 'utf-8)))
;; terminal
(use-package multi-term
  :config (setq system-uses-terminfo nil))

;;; yasnippet
(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand))

;;; whitespace-mode
(use-package whitespace
  :diminish global-whitespace-mode
  :config
  (global-whitespace-mode 1)
  (setq whitespace-style '(face trailing tabs empty))
  (let ((my/bg-color "gray18"))
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

(use-package helm
  :diminish helm-mode
  :bind (("M-x" . helm-M-x)))

;;; Company-mode
(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))

;;; neotree
(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

;;; electric-pair-mode
(electric-pair-mode 1)

;;; ProofGeneral
(setq-default
 proof-follow-mode (quote follow)
 proof-layout-windows-on-visit-file t
 proof-three-window-enable t
 proof-three-window-mode-policy (quote hybrid))
