(el-get-bundle lsp-mode)
(use-package lsp-mode
  :hook ((ruby-mode rust-mode) . lsp)
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil))

(el-get-bundle company-lsp)
(use-package company-lsp
  :commands company-lsp)
