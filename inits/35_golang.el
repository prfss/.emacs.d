;;; Go
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-go))
(add-hook 'go-mode-hook
          (lambda () (set (make-local-variable 'whitespace-style) '(face trailing empty))))
