;;; package --- Summary Taken from http://web-mode.org/
;;; Commentary:




;;; Code:
(straight-use-package 'web-mode)
(straight-use-package 'smartparens)

(require 'web-mode)
(require 'smartparens)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))



(defun my-setup-indent (n)
  ;; java/c/c++
  (setq-local c-basic-offset n)
  (setq c-indent-level n)
  ;; web development
  (setq-local coffee-tab-width n) ; coffeescript
  (setq-local javascript-indent-level n) ; javascript-mode
  (setq-local js-indent-level n) ; js-mode
  (setq-local js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq-local web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq-local web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq-local web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq-local css-indent-offset n) ; css-mode
  )

(defun my-office-code-style ()
  (interactive)
  (message "Office code style!")
  (setq-default tab-width 2)
  ;; cpp style
  (c-set-offset 'substatement-open 0)
  (setq c++-tab-always-indent t)
  
  ;; use tab instead of space
  (setq-local indent-tabs-mode t)
  ;; indent 4 spaces width
  (my-setup-indent 4)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-current-element-highlight t))

(defun my-personal-code-style ()
  (interactive)
  (message "My personal code style!")
  (setq-default tab-width 2)
  ;; cpp style
  (c-set-offset 'substatement-open 0)
  (setq c++-tab-always-indent nil)

  ;; use space instead of tab
  (setq indent-tabs-mode nil)
  ;; indent 2 spaces width
  (my-setup-indent 2)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-current-element-highlight t))

(defun my-setup-develop-environment ()
  (interactive)
  (let ((proj-dir (file-name-directory (buffer-file-name))))
    ;; if hobby project path contains string "hobby-proj1"
    (if (string-match-p "develop" proj-dir)
        (my-personal-code-style))

    ;; if commericial project path contains string "commerical-proj"
    (if (string-match-p "commercial" proj-dir)
        (my-office-code-style))))

;; prog-mode-hook requires emacs24+
(add-hook 'prog-mode-hook 'my-personal-code-style)
;; a few major-modes does NOT inherited from prog-mode
(add-hook 'lua-mode-hook 'my-personal-code-style)
(add-hook 'web-mode-hook 'my-personal-code-style)
(add-hook 'python-mode-hook 'my-personal-code-style)
(add-hook 'c++-mode-hook 'my-personal-code-style)
(add-hook 'c-mode-hook 'my-personal-code-style)
(add-hook 'c-mode-common-hook 'my-personal-code-style)

;; Always start smartparens mode in rust-mode.
(add-hook 'web-mode #'smartparens-mode)

(provide 'init-web-mode)
;;; init-web-mode.el ends here
