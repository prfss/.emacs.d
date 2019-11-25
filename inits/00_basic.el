(use-package diminish)

(use-package bind-key)

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))

(defun enable-indent-buffer-on-save ()
  (interactive)
  (add-hook 'before-save-hook #'indent-buffer nil t))
