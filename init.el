;;; Initialization code; following code must be placed at the top of the init file

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path (locate-user-emacs-file "el-get-user/recipes"))

(el-get-bundle! 'init-loader
  (setq-default init-loader-show-log-after-init nil)
  (init-loader-load))

(el-get 'sync)

;;; Initialization code ends here

;;; el for defcustom
(setq custom-file (locate-user-emacs-file "custom.el"))


;;; customize theme
(load-theme 'dark t)

;;; debug
(setq debug-on-error nil)

;;; init.el ends here
