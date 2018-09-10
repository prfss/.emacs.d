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
;; tuareg
(setq auto-mode-alist
      (append '(("\\.ml[ily]?$" . tuareg-mode)
                ("\\.topml$" . tuareg-mode))
              auto-mode-alist))

(setq opam-share (substring (shell-command-to-string "opam config var share") 0 -1))
(push (concat opam-share "/emacs/site-lisp") load-path)

;;; ocp-indent and merlin are installed through opam
;; ocp-indent
(require 'ocp-indent)
;; merling
(autoload 'merlin-mode "merlin" "Merlin mode" t)
(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'caml-mode-hook 'merlin-mode)
(setq merlin-command 'opam)
(setq merlin-ac-setup 'easy)

;;; Haskell
;; stylish-haskell
(custom-set-variables
 '(haskell-stylish-on-save t))


;;; Scala
;; ensime
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;;; C/C++
;; irony-mode
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;;; Company-mode
(add-hook 'after-init-hook 'global-company-mode)
