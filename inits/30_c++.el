;; flycheck
(add-hook 'c++-mode-hook
          (lambda () (flycheck-select-checker 'c/c++-clang)))

(add-hook 'c++-mode-hook
          (lambda () (add-hook 'before-save-hook #'indent-buffer t)))

(add-to-list 'flycheck-gcc-warnings "conversion")
(add-to-list 'flycheck-clang-warnings "conversion")

;; irony-mode
(use-package irony
  :hook ((c++-mode c-mode objc-mode) . irony-mode)
  :config
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(use-package company-irony
  :config
  (add-to-list 'company-backends 'company-irony))

;; irony-eldoc
(use-package irony-eldoc
  :hook (irony-mode))
