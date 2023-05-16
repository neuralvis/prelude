(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(tango-dark))
 '(custom-safe-themes
   '("3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))
 '(ecb-layout-window-sizes
   '(("devel"
      (ecb-directories-buffer-name 0.2184873949579832 . 0.7323943661971831)
      (ecb-history-buffer-name 0.2184873949579832 . 0.2535211267605634)
      (ecb-methods-buffer-name 0.19747899159663865 . 0.9859154929577465))))
 '(ecb-options-version "2.40")
 '(fci-rule-color "#383838")
 '(global-nlinum-mode t)
 '(global-visual-line-mode 1)
 '(nlinum-format "%4d▸ ")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(vue-html-mode vue-mode ac-html ac-html-bootstrap auto-complete emmet-mode web-mode web-mode-edit-element rjsx-mode zenburn-theme volatile-highlights vkill undo-tree smex smartrep smartparens rainbow-mode rainbow-delimiters racer projectile ov operate-on-number multiple-cursors move-text markdown-mode magit json-mode js2-mode ido-ubiquitous guru-mode grizzl god-mode glsl-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region exec-path-from-shell elisp-slime-nav easy-kill discover-my-major diminish diff-hl company-auctex color-theme-solarized cdlatex cargo browse-kill-ring anzu anaconda-mode alchemist ace-window ace-jump-mode ace-jump-buffer))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(prelude-guru nil)
 '(safe-local-variable-values
   '((flycheck-disabled-checkers emacs-lisp-checkdoc)
     (projectile-project-compilation-cmd . "./serve.sh")
     (projectile-project-compilation-cmd . "./build.sh")
     (projectile-project-compilation-cmd . "source build.sh")
     (projectile-project-compilation-cmd . "make html")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "color-234" :foreground "brightwhite")))))

;;(prelude-require-packages '(multiple-cursors projectile org glsl-mode ))

(provide 'custom)

;;; custom.el ends here
