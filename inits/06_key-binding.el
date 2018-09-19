;; scroll up/down
(global-set-key (kbd "C-.") (lambda () (interactive) (scroll-down 1)))
(global-set-key (kbd "C-,") (lambda () (interactive) (scroll-up 1)))

;; force quit
(defun force-kill-emacs ()
  (setq kill-emacs-hook ())
  (save-buffers-kill-terminal))

(global-set-key (kbd "C-c C-c") (lambda () (interactive) (force-kill-emacs)))

;; neotree
(global-set-key [f8] 'neotree-toggle)
