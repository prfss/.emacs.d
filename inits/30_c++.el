;; flycheck
(add-hook 'c++-mode-hook
          (lambda () (flycheck-select-checker 'c/c++-clang)))

;; irony-mode
(el-get-bundle irony-mode
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

(el-get-bundle company-irony)
(use-package company-irony
  :config
  (mapc (lambda (h) (add-hook h 'irony-mode))
        '(c++-mode-hook c-mode-hook objc-mode-hook))
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-irony)))

;; irony-eldoc
(el-get-bundle irony-eldoc)
(use-package irony-eldoc
  :config (add-hook 'irony-mode-hook #'irony-eldoc))
