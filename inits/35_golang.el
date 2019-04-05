;;; Go
(el-get-bundle go-mode)
(el-get-bundle go-company
  (eval-after-load 'company
    '(add-to-list 'company-backends 'company-go))
  (add-hook 'go-mode-hook
            (lambda () (set (make-local-variable 'whitespace-style) '(face trailing empty)))))

(el-get-bundle go-eldoc)
