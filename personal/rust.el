(straight-use-package 'rust-mode)
(straight-use-package 'racer)
(straight-use-package 'smartparens)

;;setting up rust racer
(require 'rust-mode)
(require 'racer)
(require 'smartparens)

;; Indetations are spaces
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;; run rust-fmt on save
;; (setq rust-format-on-save t)

;; setting path for racer
;;Taken from https://github.com/racer-rust/emacs-racer
(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path
      (concat (string-trim
               (shell-command-to-string "rustc --print sysroot"))
              "/lib/rustlib/src/rust/library"))

;; start racer and eldoc mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

;; Always start smartparens mode in rust-mode.
(add-hook 'rust-mode #'smartparens-mode)

;; company mode
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;; bind compile run keys
(define-key rust-mode-map (kbd "C-c C-c") 'rust-compile)
(define-key rust-mode-map (kbd "C-c C-r") 'rust-run)

