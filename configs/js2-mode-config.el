
(setq load-path (cons "~/.dotemacs/lisps/js2-mode" load-path))

;; Configure js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Configure js2-imenu-extras
(eval-after-load 'js2-mode
  '(progn
     (require 'js2-imenu-extras)
     (js2-imenu-extras-setup)))
