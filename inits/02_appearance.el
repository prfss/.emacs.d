(setq inhibit-startup-screen t)

;; frame title
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

(setq-default tab-width 4 indent-tabs-mode nil)
(recentf-mode 1)
(show-paren-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(tool-bar-mode 0)

;; frame size
(setq default-frame-alist
      '(
        (width . (text-pixels . 980))
        (height . (text-pixels . 800))
        ))

;; transparency
(if window-system
    (push `(alpha . 85) default-frame-alist))

(modify-frame-parameters (selected-frame) default-frame-alist)

;; line number
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (global-linum-mode))

;; theme
(el-get-bundle nashamri/spacemacs-theme)
(use-package spacemacs-dark-theme
  :config
  (load-theme 'spacemacs-dark t))

;;; powerline
(el-get-bundle powerline)
(use-package powerline
  :init
  (setq powerline-default-separator 'slant))

(el-get-bundle spaceline)
(use-package spaceline-config
  :config
  (spaceline-emacs-theme))
