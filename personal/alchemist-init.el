;;Taken from https://github.com/tonini/alchemist.el#configuration

;;; Code:

(straight-use-package 'company)
(straight-use-package 'alchemist)
(straight-use-package 'rust-mode)
(straight-use-package 'racer)

(require 'company)
(require 'alchemist)

;;setting up rust racer
(require 'rust-mode)
(require 'racer)

(setq alchemist-mix-command "mix")
(setq alchemist-iex-program-name "iex")
(setq alchemist-execute-command "elixir")
(setq alchemist-compile-command "elixirc")
(add-hook 'after-init-hook 'global-company-mode)

;;Taken from https://github.com/racer-rust/emacs-racer
(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path "~/develop/rust/src")

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(provide 'alchemist-init)
;;; alchemist-init.el ends here
