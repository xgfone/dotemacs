;; ----------------------------- color theme ----------------------------------
;; 配色方案。通过M-x color-theme-select打开一个配色方案选择窗口，在配色方案上
;; 按l（小写的L）就可以改变当前frame的配色，按i就可以改变所有frame的配色。如果
;; 想选定一个配色方案后就一直使用它，可以按p把当前的配色方案的lisp打印出来，然
;; 后加到.emacs文件；此时，就不需要使用(require 'color-theme)了。

(setq load-path (cons "~/.dotemacs/lisps/color-theme/" load-path))
(require 'color-theme)

(setq load-path (cons "~/.dotemacs/lisps/color-theme/themes/" load-path))
(load "color-theme-library")

;; use xterm
;;(color-theme-scintilla)
(color-theme-midnight)

;; use X Window 
;;(color-theme-gnome2)
