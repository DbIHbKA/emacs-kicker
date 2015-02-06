;;; Code:
(when (not (ignore-errors (el-get-executable-find "python")))
  (error "Can't find python."))
(when (not (ignore-errors (el-get-executable-find "pip")))
  (error "Can't find pip."))
(when (not (ignore-errors (el-get-executable-find "ipython")))
  (error "Can't find ipython."))
(when (not (ignore-errors (el-get-executable-find "nosetests")))
  (error "Can't find nose."))
(when (not (ignore-errors (el-get-executable-find "virtualenv")))
  (error "Can't find virtualenv."))
(when (not (ignore-errors (el-get-executable-find "pyflakes")))
  (error "Can't find pyflakes."))

(when (version< emacs-version "24.3")
  (add-to-list 'my:el-get-packages 'python24))

(add-to-list 'my:el-get-packages 'elpy)


(provide 'python-pkg-init)
;;; python-pkg-init.el ends here
