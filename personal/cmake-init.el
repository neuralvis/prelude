; Add cmake listfile names to the mode list.
(setq auto-mode-alist
        (append
            '(("CMakeLists\\.txt\\'" . cmake-mode))
               '(("\\.cmake\\'" . cmake-mode))
                  auto-mode-alist))

(autoload 'cmake-mode "~/cfg/.emacs.d/personal/cmake-mode.el" t)
; Other cmake tools

;; MADHU: Not sure how to use this package. Defered for later
;; (require 'cpputils-cmake)
;; (autoload 'cmake-project-mode "cmake-project")
