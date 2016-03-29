;;Taken from https://github.com/tonini/alchemist.el#configuration

;;; Code:

(require 'alchemist)
(setq alchemist-mix-command "mix")
(setq alchemist-iex-program-name "iex")
(setq alchemist-execute-command "elixir")
(setq alchemist-compile-command "elixirc")
(add-hook 'after-init-hook 'global-company-mode)
(provide 'alchemist-init)
;;; alchemist-init.el ends here
