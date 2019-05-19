(el-get-bundle rust-mode)
(use-package rust-mode
  :config
  (add-hook 'rust-mode-hook #'lsp)
  (add-hook 'rust-mode-hook #'rust-enable-format-on-save)
  )

(el-get-bundle flycheck-rust)
