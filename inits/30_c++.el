;; flycheck
(add-hook 'c++-mode-hook
          (lambda () (flycheck-select-checker 'c/c++-clang)))

(add-to-list 'flycheck-gcc-warnings "conversion")
(add-to-list 'flycheck-clang-warnings "conversion")

;; irony-mode
(el-get-bundle irony-mode)
(use-package irony-mode
  :hook (c++-mode c-mode objc-mode)
  :hook (((irony-mode) . irony-cdb-autosetup-compile-options ))
  )

(el-get-bundle company-irony)
(use-package company-irony
  :config
  (add-to-list 'company-backends 'company-irony))

;; irony-eldoc
(el-get-bundle irony-eldoc)
(use-package irony-eldoc
  :hook (irony-mode))
