(use-package helm
  :bind (("M-x" . helm-M-x)))

(use-package helm-config
  :straight helm
  :diminish helm-mode
  :config
  (helm-mode 1))
