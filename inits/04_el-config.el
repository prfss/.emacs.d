;;; load and configure emacs lisp

;;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
;; C++11
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

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
			:underline t))
  )

(use-package helm
  :bind (("M-x" . helm-M-x)))

(use-package powerline
  :config (powerline-default-theme))

;;; OCaml
;; merlin
(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
 (when (and opam-share (file-directory-p opam-share))
  (push (expand-file-name "emacs/site-lisp" opam-share) load-path)
  (autoload 'merlin-mode "merlin" nil t nil)
  (add-hook 'tuareg-mode-hook 'merlin-mode t)
  (add-hook 'caml-mode-hook 'merlin-mode t)))
