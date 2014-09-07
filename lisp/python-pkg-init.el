;;; Code:
(when (not (ignore-errors (el-get-executable-find "python")))
  (error "Can't find python."))
(when (not (ignore-errors (el-get-executable-find "pip")))
  (error "Can't find pip."))


(add-to-list 'my:el-get-packages 'python)

(if (ignore-errors (el-get-executable-find "virtualenv"))
    (add-to-list 'my:el-get-packages 'jedi)
  (error "Can't find virtualenv."))

(add-to-list 'my:el-get-packages 'autopair)
(add-to-list 'my:el-get-packages 'flycheck)

(provide 'python-pkg-init)
;;; python-pkg-init.el ends here
