(el-get-bundle rust-mode)
(use-package rust-mode
  :config
  (add-hook 'rust-mode-hook #'lsp)
  ;;; prefer flymake in rust-mode
  (add-hook 'rust-mode-hook (lambda () (flycheck-mode -1)))
  (add-hook 'rust-mode-hook #'rust-enable-format-on-save)
  )

(el-get-bundle flycheck-rust)

(use-package lsp-mode
  :config
  (lsp-register-client
   (make-lsp-client
    :new-connection (lsp-stdio-connection '("rls"))
    :major-modes '(rust-mode)
    :priority 0
    :server-id 'rls+clippy
    :initialized-fn (lambda (workspace)
                      (with-lsp-workspace workspace (lsp--set-configuration `(:rust (:clippy_preference "on")))))
    :notification-handlers (lsp-ht ("window/progress" 'lsp-clients--rust-window-progress))
    )))
