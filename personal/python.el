
(straight-use-package 'anaconda-mode)
(straight-use-package 'company-anaconda)

(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(add-hook 'python-mode-hook 'anaconda-mode)
