;;; load and configure emacs lisp

;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;; shell
;; shell-mode
(add-hook 'shell-mode-hook
	  (lambda ()
            (set-buffer-process-coding-system 'utf-8 'utf-8)))
;; terminal
(use-package multi-term
  :config (setq system-uses-terminfo nil))


;;; whitespace-mode
(use-package whitespace
  :config
  (global-whitespace-mode 1)
  (setq whitespace-style '(face
			   trailing
			   tabs
			   empty
                         ))

  (let ((my/bg-color "#242020"))
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
			:underline t))
  )

(use-package helm
  :bind (("M-x" . helm-M-x)))

(use-package powerline
  :config (powerline-default-theme))
