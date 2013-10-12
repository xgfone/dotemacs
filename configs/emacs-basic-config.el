;; ****************************************************************************
;; ------------------------------ set some information ------------------------
;; 设置个人信息
(setq user-full-name "xgfone")
(setq user-full-address "xgfone@126.com")

;; 设置书签文件
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")

;; 设置缩略词文件
(setq bookmark-default-file "~/.emacs.d/.emacs.abbr")

;; 由菜单修改配置的东西将会保存在custom-file里
(setq custom-file "~/.dotemacs/configs/custom.el")

;; 把以下缺省禁用的功能都打开
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)


;; ----------------------------------------------------------------------------
;; -------------------------------- 外观设置 ----------------------------------
;; 改变emacs标题栏的标题
(setq frame-title-format "%b")

;; 设置emacs启动窗口大小
;(setq default-frame-alist '((height . 40) (width . 120) (menu-bar-lines . 20) (tool-bar-lines . 0)))
;(setq default-frame-alist '((height . 40) (width . 120)))

;; 设置emacs启动时所处在屏幕上的位置
;(setq initial-frame-alist '((top . 0) (left . 0) (width . 120) (heigth . 40)))
;(setq initial-frame-alist '((top . 0) (left . 0)))

;; 去掉工具栏
(tool-bar-mode nil)

;; 去掉菜单栏，将F10绑定为显示菜单栏，再摁F10就去掉菜单
;;(menu-bar-mode nil)

;; 不要滚动栏，现在都用滚轴鼠标了，可以不用滚动栏了
;;(scroll-bar-mode nil)

;; 启用minibuffer，好像是默认设置
(minibuffer-electric-default-mode 1)

;; 在minibuffer上面可以显示列号
(column-number-mode t)

;; 显示该缓冲区中的文件的大小
(setq size-indication-mode t)

;; 显示默认的文档的宽度
(setq default-fill-column 120)

;; 显示当前文件所使用的模式
(setq which-function-mode t)


;; ----------------------------------------------------------------------------
;; -------------------------------- 编码设置 ----------------------------------
;;整体环境设置
;;(set-language-environment 'Chinese-GB18030)
(set-language-environment 'UTF-8)

;; 键盘输入的编码方式
;;(set-keyboard-coding-system 'chinese-gb18030)
(set-keyboard-coding-system 'utf-8)

;;终端下emacs的中文设置？
(set-terminal-coding-system 'utf-8)

;;文件保存时的编码设置
;;(set-buffer-file-coding-system 'chinese-gb18030)
(set-buffer-file-coding-system 'utf-8)

;; 新建文件时的编码方式
;;(setq default-buffer-file-coding-system 'chinese-gb18030)
(setq default-buffer-file-coding-system 'utf-8)

;; 读取或写入文件名的编码方式
;;(setq default-buffer-file-coding-system 'chinese-gb18030)
(setq file-name-coding-system 'utf-8)

;;emacs和其他程序互相复制／粘贴的设置
;;(set-selection-coding-system 'chinese-gb18030)
;;(set-clipboard-coding-system 'chinese-gb18030)
(set-selection-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)

(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)

;;字体解码优先顺序，从王垠那拷过来的
;;(setq font-encoding-alist
;;(append '(("MuleTibetan-0" (tibetan . 0))
;;("GB2312" (chinese-gb2312 . 0))
;;("JISX0208" (japanese-jisx0208 . 0))
;;("JISX0212" (japanese-jisx0212 . 0))
;;("VISCII" (vietnamese-viscii-lower . 0))
;;("KSC5601" (korean-ksc5601 . 0))
;;("MuleArabic-0" (arabic-digit . 0))
;;("MuleArabic-1" (arabic-1-column . 0))
;;("MuleArabic-2" (arabic-2-column . 0))) font-encoding-alist))


;; ----------------------------------------------------------------------------
;; -------------------------------- 备份设置 ----------------------------------
;; emacs有一个自动保存功能，默认在~/.emacs.d/auto-save-list目录中，这里没有改动
;; 启用版本控制，即可以备份多次
(setq version-control t)

;; 备份最原始的版本两次，记第一次编辑前的文档，和第二次编辑前的文档
(setq kept-old-versions 2)

;; 备份最新的版本五次，理解同上
(setq kept-new-versions 5)

;; 删掉不属于以上7中版本的版本
(setq delete-old-versions t)

;; 设置备份文件的路径
(setq backup-directory-alist '(("." . "~/.emacs.d/.emacs.tmp")))

;; 备份设置方法，直接拷贝
(setq backup-by-copying t)


;; ----------------------------------------------------------------------------
;; ------------------------- 时间戳设置(time-stamp) ---------------------------
;; 设定文档上次保存的信息,只要里在文档里有Time-stamp:的设置，就会自动保存时间戳
;; 启用time-stamp
(setq time-stamp-active t)

;; 去掉time-stamp的警告
(setq time-stamp-warn-inactive t)

;; 设置time-stamp的格式
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")

;; 将修改时间戳添加到保存文件的动作里。
(add-hook 'write-file-hooks 'time-stamp)


;; ----------------------------------------------------------------------------
;; ------------------------------ 时间显示设置 --------------------------------
;; 启用时间显示设置
(display-time-mode 1)

;;时间使用24小时制
(setq display-time-24hr-format t)

;;时间显示包括日期和具体时间
(setq display-time-day-and-date t)

;;时间栏旁边启用邮件设置
(setq display-time-use-mail-icon t)

;;时间的变化频率
(setq display-time-interval 1)

;; 格式化时间显示，这个好像没有工作，待查看原因
(setq display-time-format "%u %Y-%m-%d %H:%M:%S")


;; ----------------------------------------------------------------------------
;; -------------------------------- 自动补全 ----------------------------------
;; 启用部分补全功能，如输入M-x q r r相当于M-x query-replace-regexp
;;(partial-completion-mode 1)

;; 在minibuffer里启用自动补全函数和变量
(icomplete-mode 1)


;; ----------------------------------------------------------------------------
;; -------------------------------- 组合键绑定 --------------------------------
;; 自定义快捷键前缀
(define-prefix-command 'my-ctrl-v-map)
(global-set-key (kbd "C-v") 'my-ctrl-v-map)

;; 跳转到某一行绑定到C-c l组合键上。
;;(global-set-key [(control ?v) (?l)] 'goto-line)
(global-set-key (kbd "C-v l") 'goto-line)
(global-set-key (kbd "<f2>") 'goto-line)

;; 将tabify和untabify分别绑定到快捷键 C-v C-t 和 C-v t 上。
;; 功能：将SPACE转换成TAB、将TAB转换成SPACE。
(defun my-tabify () (interactive) (tabify (buffer-end -1) (buffer-end 1)))
(defun my-untabify () (interactive) (untabify (buffer-end -1) (buffer-end 1)))
(global-set-key (kbd "C-v C-t") 'my-tabify)
(global-set-key (kbd "C-v t") 'my-untabify)



;; ----------------------------------------------------------------------------
;; ------------------------------- 处理行尾空白 -------------------------------
;; 1、添加一个显示文件行尾空白的选项和钩子
;; 2、去掉文件行尾的空白，并在写文件时自动加载

;; 在菜单栏上的 Options 子菜单下添加一个“显示文件行尾空白”的选项
(when (boundp 'show-trailing-whitespace)
  ;; Mode name must be same as mode variable.
  (define-minor-mode show-trailing-whitespace
    "Toggle display of trailing whitespace.

With optional numeric argument ARG, activate trailing whitespace display if
ARG is positive, otherwise deactivate it."
    :init-value nil
    :lighter " WS")

  (defun my-show-trailing-whitespace ()
    "Activate `show-trailing-whitespace' mode."
    (show-trailing-whitespace 1))

  (mapcar (lambda (hook) (add-hook hook 'my-show-trailing-whitespace))
          '(sh-mode-hook emacs-lisp-mode-hook f90-mode-hook fortran-mode-hook
            awk-mode-hook change-log-mode-hook c-mode-hook c++-mode-hook
            python-mode-hook ruby-mode-hook plain-tex-mode-hook html-mode-hook
            text-mode xml-mode-hook js-mode-hook js2-mode-hook)))

;; ----------------------------------------------------------------------------

;; 去掉文件行尾的空白,在写文件时自动加载
;; Better functions than this exist in Emacs.
(defun my-delete-trailing-whitespace ()
  "Delete all trailing whitespace in buffer.

Return values are suitable for use with `write-file-functions'."
  (condition-case nil
      (progn
        ;; Don't want to do this to mail messages, etc.
        ;; Would an exclude list be better?
        ;; Error was occurring in VM-mode for some reason.
        (when (memq major-mode '(text-mode sh-mode emacs-lisp-mode f90-mode
                                 awk-mode c-mode c++-mode change-log-mode
                                 python-mode ruby-mode html-mode xml-mode
                                 plain-tex-mode js-mode js2-mode))
          (message "Cleaning up whitespace...")
          (delete-trailing-whitespace)
          (message "Cleaning up whitespace... Done")
          nil))
    (error (message "Cleaning up whitespace... ERROR") t)))

(add-hook (if (boundp 'write-file-functions) 'write-file-functions
            'write-file-hooks) 'my-delete-trailing-whitespace)



;; ----------------------------------------------------------------------------
;; --------------------------------- 杂项 -------------------------------------
;;去掉Emacs和gnus启动时的引导界面
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)

;; 设置缺省的主模式为text-mode，而不是几乎什么功能也没有的fundamental-mode
(setq default-major-mode 'text-mode)
;;(setq major-mode 'text-mode)

;; 所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母
(fset 'yes-or-no-p 'y-or-n-p)

;; 允许minibuffer自由变化其大小
(setq resize-mini-windows t)

;; 当寻找一个同名的文件，自动关联上那个文件
(setq uniquify-buffer-name-style 'forward)

;; 在emacs读man文档时，使用当前buffer
(setq Man-notify-method 'pushy)

;; 鼠标自动避开指针，如当你输入的时候，指针到了鼠标的位置，鼠标有点挡住视线了
;;(mouse-avoidance-mode 'animate)

;; 允许自动打开图片，如wiki里面
(auto-image-file-mode)

;; 可以操作压缩文档
(auto-compression-mode 1)

;; 指针不要闪，我的眼睛花了
(blink-cursor-mode -1)
(transient-mark-mode 1)

;; 当指针到一个括号时，自动显示所匹配的另一个括号
(show-paren-mode 1)
(setq show-paren-style 'parentheses)

;; 是用滚轴鼠标
(mouse-wheel-mode t)

;; 去掉烦人的警告铃声
(setq visible-bell nil)

;; 滚动页面时比较舒服，不要整页的滚动
(setq scroll-step 1
      scroll-margin 3
      scroll-conservatively 10000)

;; 设定句子结尾，主要是针对中文设置
(setq sentence-end
      "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; 当指针移到另一行，不要新增这一行
(setq next-line-add-newlines nil)

;; 在文档最后自动插入空白一行，好像某些系统配置文件是需要这样的
(setq require-final-newline t)
(setq track-eol t)

;; 使用C-k删掉指针到改行末的所有东西
(setq-default kill-whole-line t)

;; 设定删除保存记录为1000，可以方便以后无限恢复
(setq kill-ring-max 1000)

;; 增大使用查找函数和变量的寻找范围
(setq apropos-do-all t)

;; 是用aspell程序作为Emacs的拼写检查成学
(setq-default ispell-program-name "aspell")

;; 使用narrow功能时的一个设置
(put 'narrow-to-region 'disabled nil)

;; 启动Emacs自动设置为两个窗口(上下各一个)
;;(split-window-vertically)

;; 允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;; 可以递归地使用minibuffer
(setq enable-recursive-minibuffers t)

;; 语法加亮
(global-font-lock-mode t)

;; 让Dired可以递归地拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; 不用TAB字符来indent, 这会引起很多奇怪的错误。编辑Makefile的时候也不用担心，
;; 因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的
(setq-default indent-tabs-mode nil)
(setq default-tab-width 8)
(setq tab-stop-list ())
;;(loop for x downfrom 40 to 1 do
;;      (setq tab-stop-list (cons (* x 4) tab-stop-list)))

;; --------------------------------- END --------------------------------------
;; ****************************************************************************
