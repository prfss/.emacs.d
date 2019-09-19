;;; ProofGeneral
(use-package proof-general
  :config
  (setq-default
   proof-follow-mode (quote follow)
   proof-layout-windows-on-visit-file t
   proof-three-window-enable t
   proof-three-window-mode-policy (quote hybrid)))
