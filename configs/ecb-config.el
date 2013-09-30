(setq load-path (cons "~/.dotemacs/lisps/ecb/" load-path))
(load "~/.dotemacs/lisps/ecb/ecb")
;;(load "ecb-autoloads")

;;(ecb-minor-mode t)
;;(ecb-minor-menu t)
(setq ecb-upgrade-check-done t)

;; close the tip when ecb starts each time.
(setq ecb-tip-of-the-day nil)
