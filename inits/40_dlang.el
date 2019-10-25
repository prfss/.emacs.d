(use-package d-mode
  :config
  (add-hook 'd-mode-hook #'lsp)
  (add-hook 'd-mode-hook (lambda () (setq c-basic-offset 4)))
  (add-hook 'd-mode-hook #'enable-indent-buffer-on-save)
  (add-to-list 'lsp-language-id-configuration '(d-mode . "d"))
  (lsp-register-client
   (make-lsp-client
    :new-connection (lsp-stdio-connection '("~/.dub/packages/.bin/dls-latest/dls"))
    :major-modes '(d-mode)
    :server-id 'dls
    )))
