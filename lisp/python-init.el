
(require 'elpy)

(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")
(when (executable-find "ipython")
  (elpy-use-ipython))
(when (require 'flycheck nil t)
  (remove-hook 'elpy-modules 'elpy-module-flymake)
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(define-key python-mode-map (kbd "RET")
  'newline-and-indent)
(add-hook 'python-mode-hook
	  (lambda () (set (make-local-variable 'comment-inline-offset) 2)))

(provide 'python-init)
