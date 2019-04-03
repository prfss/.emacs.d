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

;; merlin-eldoc
(use-package merlin-eldoc
  :hook ((reason-mode tuareg-mode caml-mode) . merlin-eldoc-setup))
