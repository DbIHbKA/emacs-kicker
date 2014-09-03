
(add-to-list 'my:el-get-packages 'python)

(if (ignore-errors (el-get-executable-find "virtualenv"))
    (add-to-list 'my:el-get-packages 'jedi)
  (error "Can't find virtualenv."))

(add-to-list 'my:el-get-packages 'autopair)
(add-to-list 'my:el-get-packages 'flycheck)

(provide 'python-pkg-init)
