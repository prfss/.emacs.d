(use-package go-mode
  :hook
  ((go-mode) .
   (lambda () (set (make-local-variable 'whitespace-style) '(face trailing empty)))))

(use-package company-go
  :config
  (add-to-list 'company-backends 'company-go))

(use-package go-eldoc)
