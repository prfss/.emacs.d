;; jedi (company-jedi)
(use-package company-jedi
  :config
  (add-to-list 'company-backends 'company-jedi)
  (setq jedi:complete-on-dot t))

;; flycheck
(add-hook 'python-mode-hook
          (lambda () (flycheck-select-checker 'python-mypy)))
