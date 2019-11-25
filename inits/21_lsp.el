(use-package lsp-mode
  :hook ((ruby-mode rust-mode) . lsp)
  :commands lsp
  :config
  (setq lsp-rust-clippy-preference "on")
  (setq lsp-log-io t)
  (setq lsp-prefer-flymake nil))

(use-package company-lsp
  :commands company-lsp)

(use-package lsp-ui)
