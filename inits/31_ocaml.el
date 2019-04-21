;;; OCaml
;; tuareg
(el-get-bundle tuareg-mode
  (push '("\\.topml$" . tuareg-mode) auto-mode-alist))

;;; ocp-indent and merlin are installed through opam
(setq opam-load-path
      (concat
       (substring (shell-command-to-string "opam config var share") 0 -1)
       "/emacs/site-lisp"))

;; ocp-indent
(use-package ocp-indent
  :load-path opam-load-path)

;; merlin
(use-package merlin
  :load-path opam-load-path
  :hook ((reason-mode tuareg-mode caml-mode) . merlin-mode)
  :config
  (setq merlin-command 'opam)
  (setq merlin-ac-setup 'easy))

;; merlin-eldoc
(el-get-bundle Khady/merlin-eldoc)
(use-package merlin-eldoc
  :hook ((reason-mode tuareg-mode caml-mode) . merlin-eldoc-setup))

;; dune
(use-package dune)
