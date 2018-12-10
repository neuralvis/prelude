;;; Code:
(straight-use-package 'slime)
(straight-use-package 'slime-company)

(require 'slime)
(require 'slime-company)

;;(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
