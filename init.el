;;; Initialization code; following code must be placed at the top of the init file


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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

;;; powerline - Do not place following code in inits/04_el-configl.el
(use-package powerline
  :config
  (powerline-default-theme))

;;; customize theme
(load-theme 'dark2 t)

;;; debug
(setq debug-on-error nil)

;;; init.el ends here
