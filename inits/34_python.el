;;; Python
;; jedi (company-jedi)
(el-get-bundle company-jedi)
(use-package company-jedi
  :config
  (add-hook 'python-mode-hook
            (lambda () (add-to-list 'company-backends 'company-jedi)))
  (setq jedi:complete-on-dot t))
