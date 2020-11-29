;; Projectile options


(straight-use-package 'ivy)
(straight-use-package 'counsel)
(straight-use-package 'swiper)
(straight-use-package 'projectile)


;; configuration set from
;; https://docs.projectile.mx/projectile/configuration.html
(setq projectile-indexing-method 'alien)
(setq projectile-completion-system 'ivy)

;; sort files by recently active buffers
;; and then recently opened files
(setq projectile-sort-order 'recently-active)
