(use-package lsp-mode
  :hook ((go-mode python-mode ruby-mode rust-mode) . lsp)
  :commands lsp
  :config
  (setq lsp-rust-clippy-preference "on")
  (setq lsp-log-io t)
  (setq lsp-prefer-flymake nil)
  (setq lsp-enable-file-watchers nil)
  (defun lsp-format-buffer-on-save ()
    (interactive)
    (add-hook 'before-save-hook #'lsp-format-buffer nil t))
  )

(use-package company-lsp
  :commands company-lsp)

(use-package lsp-ui
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  )
