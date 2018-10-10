(setq inhibit-startup-screen t)
;; Frame title
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

(setq-default tab-width 4 indent-tabs-mode nil)
(recentf-mode 1)
(show-paren-mode 1)
                                        ;(line-number-mode 1)
(column-number-mode 1)
(tool-bar-mode 0)

(if window-system
    (set-frame-parameter nil 'alpha 85))

(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (global-linum-mode))
