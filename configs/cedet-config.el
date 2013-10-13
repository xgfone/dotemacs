;; ****************************************************************************
;; ********************************** CEDET SET *******************************
;;    * Semantic -— 多种编程语言的语法分析的基础组件。
;;    * Srecode -— 代码生成组件。
;;    * EDE -— 提供工程管理相关功能;
;; ****************************************************************************
(add-to-list 'load-path "~/.dotemacs/lisps/cedet/common/")

(require 'cedet)

;; ----------------------------------------------------------------------------
;; -------------------------------- Semantic ----------------------------------
(require 'semantic-ia)
(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)

;; Semantic DataBase存储位置
(setq semanticdb-default-save-directory (expand-file-name "~/.emacs.d/semanticdb"))

;; ----------------------------------------------------------------------------
;; ---------------------------------- EDE -------------------------------------
;; Enable EDE (Project Management) features
(global-ede-mode 1)


;; ----------------------------------------------------------------------------
;; --------------------------------- Srecode ----------------------------------
;; Enable SRecode (Template management) minor-mode.
(load "srecode/mode")
(global-srecode-minor-mode 1)


;;; Include settings
(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public" "."
        "../.." "../../include" "../../inc" "../../common" "../../public"))
(setq cedet-sys-include-dirs (list
                              "/usr/include"
                              "/usr/include/bits"
                              "/usr/include/glib-2.0"
                              "/usr/include/gnu"
                              "/usr/include/gtk-2.0"
                              "/usr/include/gtk-2.0/gdk-pixbuf"
                              "/usr/include/gtk-2.0/gtk"
                              "/usr/local/include"
                              "/usr/local/include"))
(let ((include-dirs cedet-user-include-dirs))
  (setq include-dirs (append include-dirs cedet-sys-include-dirs))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))
(setq semantic-c-dependency-system-include-path "/usr/include/")



;; ----------------------------------------------------------------------------
;; ------------------------------- 自动补全功能 -------------------------------
;; 你可以设置以下 hippie-expand 的补全方式。它是一个优先列表， hippie-expand 会
;; 优先使用表最前面的函数来补全；这是说，首先使用当前的buffer补全，如果找不到，
;; 就到别的可见的窗口里寻找，如果还找不到，那么到所有打开的buffer去找，如果
;; 还...那么到kill-ring里，到文件名，到简称列表里，到list，...。当前使用的匹配
;; 方式会在 echo 区域显示。把hippie-expand绑定到M-/组合键上。
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(senator-try-expand-semantic
        semantic-ia-complete-symbol
        try-expand-line
        try-expand-line-all-buffers
        try-expand-list
        try-expand-list-all-buffers
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-expand-all-abbrevs
        try-complete-file-name
        try-complete-file-name-partially
        try-complete-lisp-symbol
        try-complete-lisp-symbol-partially
        try-expand-whole-kill))

(defun indent-or-complete ()
  "Complete if point is at end of a word, otherwise indent line."
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command)))

(defun yyc/indent-key-setup ()
  "Set tab as key for indent-or-complete"
  (local-set-key [(tab)] 'indent-or-complete))

;; C-mode-hooks.
(defun yyc/c-mode-keys ()
  "description"
  ;; Semantic functions.
  (semantic-default-c-setup)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-cb" 'semantic-mrub-switch-tags)
  (local-set-key "\C-cR" 'semantic-symref) ;; 当前光标下的函数被哪些函数调用
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cp" 'semantic-ia-show-summary)
  (local-set-key "\C-cl" 'semantic-ia-show-doc)
  (local-set-key "\C-cr" 'semantic-symref-symbol)
  (local-set-key "\C-c/" 'semantic-ia-complete-symbol)
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert)
  ;; Indent or complete
  (local-set-key [(tab)] 'indent-or-complete)
  )
(add-hook 'c-mode-common-hook 'yyc/c-mode-keys)


;; smart complitions
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

;; ********************************* CEDET END ********************************
;; ****************************************************************************
