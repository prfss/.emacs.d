(use-package go-mode
  :hook
  ((go-mode) .
   (lambda () (set (make-local-variable 'whitespace-style) '(face trailing empty)))))
