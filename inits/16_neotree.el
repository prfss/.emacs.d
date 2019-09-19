(use-package all-the-icons)
(use-package neotree
  :bind (([f8] . neotree-toggle))
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
