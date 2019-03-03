;; flycheck
(add-hook 'c++-mode-hook
          (lambda () (flycheck-select-checker 'c/c++-clang)))

;; irony-mode
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;; company-irony
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
;; irony-eldoc
(add-hook 'irony-mode-hook #'irony-eldoc)
