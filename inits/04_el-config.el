;;; load and configure emacs lisp

;;; Style
(custom-set-variables '(c-default-style
                        (quote
                         ((java-mode . "java")
                          (awk-mode  . "awk")
                          (other     . "gnu")))))

;;; flycheck
(use-package flycheck
  :config (add-hook 'after-init-hook #'global-flycheck-mode)
  ;; C++
  (setq flycheck-gcc-language-standard "c++14")
  (setq flycheck-clang-language-standard "c++14")
  (add-to-list 'flycheck-gcc-warnings "conversion")
  (add-to-list 'flycheck-clang-warnings "conversion")
  )

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
  (define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand)
  )

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
                        :underline t))
  )

(use-package helm
  :diminish helm-mode
  :bind (("M-x" . helm-M-x)))

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
(use-package ocp-indent)
;; merlin
(autoload 'merlin-mode "merlin" "Merlin mode" t)
(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'caml-mode-hook 'merlin-mode)
(setq merlin-command 'opam)
(setq merlin-ac-setup 'easy)

;;; Haskell
(custom-set-variables
  '(haskell-indent-look-past-empty-line nil)
  '(haskell-indent-offset 2)
  '(haskell-indent-thenelse 1)
  '(haskell-mode-hook (quote (haskell-indent-mode turn-on-haskell-doc-mode)) t)
  '(haskell-program-name "ghci")
  ;; stylish-haskell
  '(haskell-stylish-on-save t))

;;; Scala
;; ensime
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;;; C/C++
;; irony-mode
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;; company-irony
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
;; irony-eldoc
(add-hook 'irony-mode-hook #'irony-eldoc)
(setq irony-additional-clang-options (quote ("-std=c++14")))

;;; Python
;; jedi (company-jedi)
(add-hook 'python-mode-hook
          (lambda () (add-to-list 'company-backends 'company-jedi)))
(setq jedi:complete-on-dot t)

;;; Go
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-go))
(add-hook 'go-mode-hook
          (lambda () (set (make-local-variable 'whitespace-style) '(face trailing empty))))

;;; Company-mode
(add-hook 'after-init-hook 'global-company-mode)

;;; neotree
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;;; electric-pair-mode
(electric-pair-mode 1)

;;; ProofGeneral
(custom-set-variables
 '(proof-follow-mode (quote follow))
 '(proof-layout-windows-on-visit-file t)
 '(proof-three-window-enable t)
 '(proof-three-window-mode-policy (quote hybrid)))

