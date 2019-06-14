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
(load-theme 'dark3 t)

;;; powerline
(el-get-bundle powerline)
(use-package powerline
  :config
  (set-face-attribute 'mode-line nil
                    :foreground "#fff"
                    :background "dark slate gray"
                    :box nil)
  (set-face-attribute 'powerline-active0 nil
                      :inherit 'mode-line)
  (set-face-attribute 'powerline-active1 nil
                    :inherit 'mode-line)
  (powerline-center-theme))
