;;; specify the package path

(add-to-list 'load-path "../../.ecb")

;;; activate ecb
(require 'ecb)
(require 'ecb-autoloads)

(setq ecb-layout-name "left13")
(setq ecb-show-sources-in-directories-buffer 'always)
(setq ecb-source-path '("~/develop"))
