(el-get-bundle yasnippet)
(use-package yasnippet
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand))

(el-get-bundle yasnippet-snippets)
