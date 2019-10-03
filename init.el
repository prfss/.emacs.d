;;; Initialization code; following code must be placed at the top of the init file

(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")))

;; See https://github.com/raxod502/straight.el#my-init-time-got-slower
(setq straight-check-for-modifications '(check-on-save find-when-checking))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(setq straight-use-package-by-default t)

(use-package init-loader
  :config
  (setq-default init-loader-show-log-after-init nil)
  (init-loader-load)
  (let ((local (concat (file-name-as-directory init-loader-directory) "local")))
    (if (file-exists-p local)
        (init-loader-load local))))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

;;; Initialization code ends here

;;; el for defcustom
(setq custom-file (locate-user-emacs-file "custom.el"))

;;; debug
(setq debug-on-error nil)

;;; init.el ends here
