(setq prelude-whitespace nil)
(add-hook 'text-mode-hook #'auto-fill-mode)

(add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))
(add-hook 'org-mode-hook 'turn-on-auto-fill)
