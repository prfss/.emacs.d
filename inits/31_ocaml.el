;;; OCaml
;; tuareg
(use-package tuareg
  :config
  :mode ("\\.ml[iylp]?" . tuareg-mode)
  :mode ("\\.topml$" . tuareg-mode))

;;; ocp-indent and merlin are installed through opam
(setq opam-load-path
      (concat
       (substring (shell-command-to-string "opam config var share") 0 -1)
       "/emacs/site-lisp"))

;; ocp-indent
(use-package ocp-indent
   :straight (ocp-indent :type built-in)
   :load-path opam-load-path)

;; merlin
(use-package merlin
  :straight (merlin :type built-in)
  :load-path opam-load-path
  :hook (((reason-mode tuareg-mode caml-mode) . merlin-mode))
  :config
  (setq merlin-command 'opam)
  (setq merlin-ac-setup 'easy)
  (add-hook 'merlin-mode-hook (lambda () (merlin-use "batteries")))
  (setq merlin-debug t)
  )

;; merlin-eldoc
(use-package merlin-eldoc
  :hook (((reason-mode tuareg-mode caml-mode) . merlin-eldoc-setup)))

;; dune
(use-package dune)
