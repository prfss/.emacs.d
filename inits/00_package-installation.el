(el-get-bundle all-the-icons)
(el-get-bundle company-lsp)
(el-get-bundle ddskk)
(el-get-bundle diminish)
(el-get-bundle ggtags)
(el-get-bundle less-css-mode)
(el-get-bundle lsp-mode)
(use-package lsp-mode
  :commands lsp
  :config
  ;(setq lsp-prefer-flymake nil)
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

(el-get-bundle markdown-mode)
(el-get-bundle pos-tip)
(el-get-bundle toml-mode)
(el-get-bundle use-package)
