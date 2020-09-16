(require 'rust-mode)

;; Indetations are spaces
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;; run rust-fmt on save
;; (setq rust-format-on-save f)

;; setting path for racer
(setq racer-rust-src-path
      (concat (string-trim
               (shell-command-to-string "rustc --print sysroot"))
              "/lib/rustlib/src/rust/src"))

;; start racer and eldoc mode
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

;; company mode
(add-hook 'racer-mode-hook #'company-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;; bind compile run keys
(define-key rust-mode-map (kbd "C-c C-c") 'rust-compile)
(define-key rust-mode-map (kbd "C-c C-r") 'rust-run)

