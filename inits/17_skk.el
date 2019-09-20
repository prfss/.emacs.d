(use-package skk
  :straight ddskk
  :bind (("C-x C-j" . skk-mode)))

(setq skk-cursor-hiragana-color "deep pink")
(setq skk-cursor-katakana-color "PaleGreen1")
(setq skk-indicator-use-cursor-color t)
(setq skk-henkan-number-to-display-candidates 10)
