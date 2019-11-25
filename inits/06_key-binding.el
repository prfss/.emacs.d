;; scroll up/down
(bind-key "C-." (lambda () (interactive) (scroll-down 1)))
(bind-key "C-," (lambda () (interactive) (scroll-up 1)))

;; force quit
(defun force-kill-emacs ()
  (setq kill-emacs-hook ())
  (save-buffers-kill-terminal))

(bind-key "C-c C-c" (lambda () (interactive) (force-kill-emacs)))
