(use-package multiple-cursors
  :config
  (unbind-key "M-<down-mouse-1>")
  (bind-key "M-<mouse-1>" 'mc/add-cursor-on-click))
