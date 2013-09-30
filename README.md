我的Emacs配置
======

    （1）本配置已经分别在 Windows7 和 Ubuntu 系统下对 Emacs23 和 Emacs24 两个版本进行测试，结果测试均通过。
    （2）本配置的原则：
        a. 不依赖操作系统平台环境；即对Unix及类Unix系统和Windows系统均支持；
        b. 不依赖第三方程序；即只要安装本配置就可100％地完全使用，而不会缺失其它功能，除非有特殊说明。
        c. 安装便捷；即可以使用本配置提供的安装文件来快速安装，也可以手工拷贝直接安装，不需要其它额外的工作。
    （3）本配置所做的工作：
         a. 配置一些基本工作，主要在 .dotemacs/configs/emacs-basic-config.el 文件中；
         b. 增强Emacs的内置功能，及增加额外的快捷功能，主要在 .dotemacs/configs/functions.el 文件中；
         c. 由于本人主要工作在 Python 开发环境下，偶尔工作在 C/C++ 和 Web 开发环境下，因此，本配置主要配置了
            Python 开发环境（使用 emacs-for-package 插件包），JavaScript 开发环境使用 js2-mode 包配置，HTML
            和 XML 等开发环境使用 Emacs 内置功能（暂时没有配置），C/C++ 开发环境简单地对 Emacs 的内置功能进
            行了配置（功能不强，有待增强）。

<b>Install——安装<b/>

    首先将本配置包放到任何一个目录下，可以命名为任何一个合法的目录名（不建议命名为“.dotemacs”————以免在某种条件下
    引起名字冲突）；然后执行以下命令：
    本安装支持两种方式：全功能配置和简单配置。
    （1）在Linux及Unix-like平台下：
         1> 安装全功能配置：
            $ sh DOWNLOADED_PACKAGE_PATH/install-awesome-emacs-on-posix.sh
         2> 安装简单配置：
            $ sh DOWNLOADED_PACKAGE_PATH/install-simple-emacs-on-posix.sh
         注：如果给以上两个文件添加了可执行权限，可以直接执行，如：
             DOWNLOADED_PACKAGE_PATH/install-awesome-emacs-on-posix.sh
           或
             DOWNLOADED_PACKAGE_PATH/install-simple-emacs-on-posix.sh
    （2）在Windows平台下：
         在Windows下，默认的安装文件仅支持Windows7系统，不支持Windows7以下的版本，比如：Windows XP。否则，您需要
         自己手工拷贝安装。
         1> 安装全功能配置：
            DOWNLOADED_PACKAGE_PATH\install-awesome-emacs-on-windows.bat
          或
            DOWNLOADED_PACKAGE_PATH\install-awesome-emacs-on-windows.bat
         2> 安装简单配置：
            DOWNLOADED_PACKAGE_PATH\install-simple-emacs-on-windows.bat
          或
            DOWNLOADED_PACKAGE_PATH\install-simple-emacs-on-windows.bat
         注：在Windows系统中，也可以直接用鼠标双击这两个BAT批处理文件来完成安装。

    说明：DOWNLOADED_PACKAGE_PATH是安装包的绝对路径或相对路径；如果当前目录已经是DOWNLOADED_PACKAGE_PATH目录，则
          在上述安装命令中，可以省略DOWNLOADED_PACKAGE_PATH。

<b>Directory Structure——目录结构</b>

    .dotemacs/
         backup/                               # 第三方插件备份目录，即目前没有被使用但以后将被使用的插件。
         configs/                              # 配置文件目录，其中包括内置插件和第三方插件的配置文件。
             emacs-basic-config.el             # 基本、简单的配置文件。
             emacs-config.el                   # 全功能配置文件，其将引用configs目录下所有的配置文件。
         lisps/                                # 第三方插件目录，如果其配置文件较大，将单独成一个文件放置
                                               # 在configs目录，否则将直接放在emacs.config.el文件中。
         install-awesome-emacs-on-posix.sh     # POSIX兼容平台下全功能配置安装文件
         install-awesome-emacs-on-windows.bat  # Windows平台下全功能配置安装文件
         install-simple-emacs-on-posix.sh      # POSIX兼容平台下简单配置安装文件
         install-simple-emacs-on-windows.bat   # Windows平台下简配置安装文件
         README.md                             # 说明文件


<b>Questions——问题</b>

    （1）如何查找 Windows 7 系统下用户主目录？
     在Windows7系统下，对Emacs而言，其主目录和VIM等软件对其主目录的看待不一样；对Emacs而言，Windows7用户的主目录
     较复杂一些。其定位方式也行简单：只需要打开Emacs（可以使用任何方式，只要能打开Emacs就行），在Emacs中按组合键
     “C-x X-f ~”即可，该组合键会用Dire模式打开当前用户的主目录，并在Dire缓冲区的第一行显示其主目录的具体位置。


<b>Other Resources——其他资源</b>

    （1）Emacs Lisp List————Emacs第三方插件收集列表
     http://www.damtp.cam.ac.uk/user/sje30/emacs/ell.html

<b>Features——本配置的特性</b>

    1、默认对一些模式（如：C-mode、C++-mode、python-mode、js-mode、html-mode、xml-mode、ruby-mode等），高亮显示
       行尾的空白。
       
    2、默认对一些模式（如：C-mode、C++-mode、python-mode、js-mode、html-mode、xml-mode、ruby-mode等），在保存文
       件时删除行尾的空白。
       
    3、默认对一些模式（如：C-mode、C++-mode、python-mode、js-mode、html-mode、xml-mode、ruby-mode等），自动格式
       化从Emacs编辑器外拷贝进来的代码。

    4、额外实现的小功能及其快捷键绑定：
    
      （1）在标记与当前位置两者之间互相跳转
          C-.      在当前位置做一个标记
          C-,      在当前位置处和由C-.组合键设置的标记处来回跳转

      （2）横仿 VIM 中的 % 键
          %        模仿VIM中的 % 键，即如果当前位置处是一个括号，则跳转到与该括号匹配的另一半括号处，否则插入一
                   个 % 符号。

      （3）模仿 VIM 中的 f 键
          C-v f    模仿VIM中的 f 键，即向前移动到指定的字符后。

      （4）注释/反注释代码块————增强内建的快捷键 M-;
          M-;      增加内建的 M-; 快捷键，即如果有激活区域（即有文本选择块），则注释/反注释激活区域，否则注释/反
                   注释当前行

      （5）增加内建的快捷键 M-w ————如果没有激活区域，则复制当前行
          M-w
          C-v w    对Emacs内建快捷键 M-w 的增强：如果有激活区域，则复制激活区域；否则复制当前行上的所有字符。
                   由于有些系统占用 M-w 快捷键，因此，在此将 M-w 的功能重新绑定到快捷键 C-v w 上，即二者完成同样
                   的功能。

      （6）缩进整个缓冲区，并删除行尾的空白
          C-v j    缩进整个缓冲区，并删除行尾的空白。注：在某些情况下，其结果可能并不是我们期望的，慎用！除非你知
                   道将要发生什么。

      （7）左移/右移代码块
          C-v <    左移代码块/文件块；如果没有被选中的代码块/文本块，则左移当前行。注：一次移动4个字符间距。
          C-v >    右移代码块/文件块；如果没有被选中的代码块/文本块，则右移当前行。注：一次移动4个字符间距。

      （8）查找缓冲区最长的行
          C-v C-l    找到当前缓冲区中最长的一行，并跳转到该行。

      （9）跳转到指定的行上
          C-v l    跳转到指定的行上。

      （10）删除一些临时的缓冲区
          C-v c    删除一些临时的 buffers，减少内存占用率。

      （11）打印键盘图
          C-v k    打印键盘图——显示全部热键。

      （12）快速查找Lisp函数
          C-v C-j   在快速查找Lisp函数。

      （13）将 speedbar 集成到 Emacs 主窗口中
           C-v s   打开Emacs内建的speedbar。
           C-v C-s  类似于快捷键 C-v s，但把speedbar集成到Emacs主窗口中。
           C-v 1    重置窗口配置。注：此命令最好在打开speedbar的情况下使用。

      （14）TAB 和 SPACE 互相转换
           C-v t   将整个缓冲区中的TAB键转换成SPACE键
           C-v C-t  将整个缓冲区中的SPACE键转换成TAB键

      （15）换行符（LF、CRLF、CR）互相转换————这个是Emacs内建的快捷键
           C-x RET f CODING RET       如果 CODING 为 unix、dos 或 mac，则相应的改变当前缓冲区中换行符为LF、
                                      CRLF、CR。


    5、一些没有绑定快捷键的小功能：
      M-x my-indent-or-complete    如果当前光标在单词中间就对齐，否则就TAB。
      M-x my-stamp                 在当前位置中插入时间、用户名和系统信息。
      M-x my-timestamp             在当前位置中插入时间戳
      M-x my-kid-stardict          调用stardict的命令行接口来查询词典
      M-x my-kid-sdcv-to-buffer    如果选中了 region，就查询 region 的内容；否则就查询当前光标所在的单词。
