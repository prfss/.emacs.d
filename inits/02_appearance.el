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
    (push `(alpha . 95) default-frame-alist))

(modify-frame-parameters (selected-frame) default-frame-alist)

;; line number
(if (version<= "26.0.50" emacs-version)
    (global-display-line-numbers-mode)
  (global-linum-mode))

;; theme
(use-package doom-themes
  :config
  (load-theme 'doom-one t))

;; modeline
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-minor-modes (featurep 'minions))
  (setq doom-modeline-buffer-file-name-style 'buffer-name))

(use-package minions)
