(use-package ccls
  :config
  (add-hook 'c++-mode-hook #'lsp)
  (setq ccls-executable "~/ccls/Release/ccls")
  )

;; ;; flycheck
;; (add-hook 'c++-mode-hook
;;           (lambda () (flycheck-select-checker 'c/c++-clang)))

;; (add-to-list 'flycheck-gcc-warnings "conversion")
;; (add-to-list 'flycheck-clang-warnings "conversion")

;; (add-hook 'c++-mode-hook #'enable-indent-buffer-on-save)

;; ;; irony-mode
;; (use-package irony
;;   :hook ((c++-mode c-mode objc-mode) . irony-mode)
;;   :config
;;   (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))

;; (use-package company-irony
;;   :config
;;   (add-to-list 'company-backends 'company-irony))

;; ;; irony-eldoc
;; (use-package irony-eldoc
;;   :hook (irony-mode))
