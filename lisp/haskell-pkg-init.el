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


(when (not (ignore-errors (el-get-executable-find "structured-haskell-mode")))
  (error "Can't find Structured Haskell Mode."))
(when (not (ignore-errors (el-get-executable-find "ghci-ng")))
  (error "Can't find ghci-ng."))
(when (not (ignore-errors (el-get-executable-find "hindent")))
  (error "Can't find hindent."))
(when (not (ignore-errors (el-get-executable-find "haskell-docs")))
  (error "Can't find haskell-docs."))

(add-to-list 'my:el-get-packages 'haskell-mode)
(add-to-list 'my:el-get-packages 'smex)
(add-to-list 'my:el-get-packages 'magit)

(provide 'haskell-pkg-init)
;;; haskell-pkg-init.el ends here
