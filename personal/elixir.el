;;Taken from https://github.com/tonini/alchemist.el#configuration

;;; Code:

(straight-use-package 'prescient)
(straight-use-package 'company-prescient)
(straight-use-package 'company)
(straight-use-package 'elixir-mode)
(straight-use-package 'smartparens)


(require 'smartparens)
(require 'company)
(require 'elixir-mode)

;; Always start smartparens mode in rust-mode.
(add-hook 'elixir-mode #'smartparens-mode)


;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode.
;; (add-hook 'elixir-mode-hook
;;           (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

;; set company mode in all buffers
(add-hook 'after-init-hook 'global-company-mode)
;; enable company-prescient-mode
(company-prescient-mode 1)


;; ;;; alchemist-init.el ends here
