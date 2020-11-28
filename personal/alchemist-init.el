;;Taken from https://github.com/tonini/alchemist.el#configuration

;;; Code:

(straight-use-package 'company)
(straight-use-package 'alchemist)

(require 'company)
(require 'alchemist)

(setq alchemist-mix-command "mix")
(setq alchemist-iex-program-name "iex")
(setq alchemist-execute-command "elixir")
(setq alchemist-compile-command "elixirc")
(add-hook 'after-init-hook 'global-company-mode)

(provide 'alchemist-init)
;;; alchemist-init.el ends here
