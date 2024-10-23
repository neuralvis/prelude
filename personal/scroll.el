(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1)
  (setq scroll-preserve-screen-position t
        scroll-conservatively 0
        maximum-scroll-margin 0.5
        scroll-margin 99999))

(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1)
  (setq scroll-preserve-screen-position t
        scroll-conservatively 0
        maximum-scroll-margin 0.5
        scroll-margin 99999))

(global-set-key "\M-n"  'gcm-scroll-down)
(global-set-key "\M-p"  'gcm-scroll-up)

;; (setq scroll-preserve-screen-position t
;;       scroll-conservatively 0
;;       maximum-scroll-margin 0.5
;;       scroll-margin 99999)
