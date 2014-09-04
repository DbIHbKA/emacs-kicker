; Make Emacs look in Cabal directory for binaries
(setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/.cabal/bin")

(when (not (ignore-errors (el-get-executable-find "ghc")))
  (error "Can't find ghc."))
(when (not (ignore-errors (el-get-executable-find "cabal")))
  (error "Can't find cabal."))
(when (not (ignore-errors (el-get-executable-find "alex")))
  (error "Can't find alex."))
(when (not (ignore-errors (el-get-executable-find "happy")))
  (error "Can't find happy."))


(add-to-list 'my:el-get-packages 'haskell-mode)
(add-to-list 'my:el-get-packages 'hi2)

(when (not (ignore-errors (el-get-executable-find "hasktags")))
  (error "Can't find hasktags."))
(when (not (ignore-errors (el-get-executable-find "stylish-haskell")))
  (error "Can't find stylish-haskell."))

(if (ignore-errors (el-get-executable-find "ghc-mod"))
    (add-to-list 'my:el-get-packages 'ghc-mod)
  (error "Can't find ghc-mod."))

(when (not (ignore-errors (el-get-executable-find "hlint")))
  (error "Can't find hlint."))
(when (not (ignore-errors (el-get-executable-find "hoogle")))
  (error "Can't find hoogle."))

(add-to-list 'my:el-get-packages 'company-mode)
(add-to-list 'my:el-get-packages 'company-ghc)

(if (ignore-errors (el-get-executable-find "structured-haskell-mode"))
    (add-to-list 'my:el-get-packages 'shm)
  (error "Can't find structured-haskell-mode."))

(add-to-list 'my:el-get-packages 'rainbow-delimiters)

(provide 'haskell-pkg-init)
;;; haskell-pkg-init.el ends here
