(el-get-bundle go-mode)
(use-package go-mode
  :hook
  ((go-mode) .
   (lambda () (set (make-local-variable 'whitespace-style) '(face trailing empty)))))

(el-get-bundle go-company)
(use-package company-go
  :config
  (add-to-list 'company-backends 'company-go))

(el-get-bundle go-eldoc)
