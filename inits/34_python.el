;; jedi (company-jedi)
(el-get-bundle company-jedi)
(use-package company-jedi
  :config
  (add-to-list 'company-backends 'company-jedi)
  (setq jedi:complete-on-dot t))
