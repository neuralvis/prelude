;;Taken from https://github.com/tonini/alchemist.el#configuration

;;; Code:

(require 'company)
(require 'alchemist)
(require 'rust-mode)
(require 'racer)

(setq alchemist-mix-command "mix")
(setq alchemist-iex-program-name "iex")
(setq alchemist-execute-command "elixir")
(setq alchemist-compile-command "elixirc")
(add-hook 'after-init-hook 'global-company-mode)

;;Taken from https://github.com/racer-rust/emacs-racer
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(provide 'alchemist-init)
;;; alchemist-init.el ends here
