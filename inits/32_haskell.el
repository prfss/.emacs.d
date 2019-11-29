(use-package haskell-mode)

(use-package lsp-haskell
  :config
  (add-hook 'haskell-mode-hook #'lsp)
  (setq lsp-haskell-process-path-hie "hie-wrapper")
  )
