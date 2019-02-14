(setq-default
 haskell-indent-look-past-empty-line nil
 haskell-indent-offset 2
 haskell-indent-thenelse 1
 haskell-mode-hook (quote (haskell-indent-mode turn-on-haskell-doc-mode))
 haskell-program-name "ghci"
 ;; stylish-haskell
 haskell-stylish-on-save t)
