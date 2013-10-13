;;; ecd-config.el 

(add-to-list 'load-path "~/.dotemacs/lisps/ecb/")
(require 'ecb)

(ecb-minor-mode t)
(ecb-minor-menu t)

;; close the tip when ecb starts each time.
(setq ecb-tip-of-the-day nil)
(setq ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
