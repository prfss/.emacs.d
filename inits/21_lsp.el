(use-package lsp-mode
  :hook ((ruby-mode rust-mode) . lsp)
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil))

(use-package company-lsp
  :commands company-lsp)
