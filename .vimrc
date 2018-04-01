"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 显示相关  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小  
set go=             " 不要图形按钮  
"color asmanian2     " 设置背景主题  
"set guifont=Courier_New:h10:cANSI   " 设置字体  
syntax on           " 语法高亮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
"set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  
"set background=dark "背景使用黑色 
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助 
if version >= 603 
	set helplang=cn 
	set encoding=utf-8 
endif 
" 设置配色方案 
"colorscheme murphy 
colorscheme desert 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"键盘命令 && 插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" " 
"ctags 
"set tags=/home/songzh/shu_mobile_server/trunk/makati/tags_c++
set tags+=./tags,../tags,../../ctags,../../../ctags,
"map <F12> ctags -R -c++-kinds=+px -field=+iaS -extra=+q .

" Taglist && winManager
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:winManagerWindowLayout='FileExplorer|TagList'

map <F11> :TlistToggle <CR>
nmap wm :WMToggle <CR>

"OminCppComplete
set nocp
filetype plugin on

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
set csto=0
set cst

"set csverb
"cs add ~/shu_mobile_server/trunk/makati/cscope.out ~/shu_mobile_server/trunk/makati

"OmniCppComplete
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

"vimgdb
"run macros/gdb_mappings.vim
"set splitbelow
"set nosplitright
"set previewheight=85
"set gdbprg=/usr/bin/gdb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed 
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3 
"set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set fileformats=unix,dos
""set enc=utf-8
""set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
" 打开文件时 跳转到上次文件关闭前光标所在位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif   

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F9> :!ctags -R . <CR>
map <F10> :TlistToggle <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动补全配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新文件创建配置  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.cc,*.[ch],*.hpp,*.sh,*.rb,*.java,*.py,*.js,*.ts exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#!/usr/bin/env bash")
        call append(line("."),   "########################################################################")
        call append(line(".")+1, "#    File Name: ".expand("%"))
        call append(line(".")+2, "# ")
        call append(line(".")+3, "#       Author: Taomee Shanghai,Inc.")
        call append(line(".")+4, "#         Mail: eden@taomee.com")
        call append(line(".")+5, "# Created Time: ".strftime("%c"))
        call append(line(".")+6, "#  Description: ...")
        call append(line(".")+7, "# ")
        call append(line(".")+8, "########################################################################")
        call append(line(".")+9, "")
        call append(line(".")+10, "")
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# -*- coding=utf-8 -*-")
        call append(line(".")+1, "########################################################################")
        call append(line(".")+2, "#    File Name: ".expand("%"))
        call append(line(".")+3, "# ")
        call append(line(".")+4, "#       Author: Taomee Shanghai,Inc.")
        call append(line(".")+5, "#         Mail: eden@taomee.com")
        call append(line(".")+6, "# Created Time: ".strftime("%c"))
        call append(line(".")+7, "#  Description: ...")
        call append(line(".")+8, "#                ")
        call append(line(".")+9, "########################################################################")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
        call append(line(".")+12, "if __name__ == '__main__':")
        call append(line(".")+13, "\tpass")
    elseif &filetype == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# -*- coding=utf-8 -*-")
        call append(line(".")+1, "########################################################################")
        call append(line(".")+2, "#    File Name: ".expand("%"))
        call append(line(".")+3, "# ")
        call append(line(".")+4, "#       Author: Taomee Shanghai,Inc.")
        call append(line(".")+5, "#         Mail: eden@taomee.com")
        call append(line(".")+6, "# Created Time: ".strftime("%c"))
        call append(line(".")+7, "#  Description: ...")
        call append(line(".")+8, "#                ")
        call append(line(".")+9, "########################################################################")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
        call append(line(".")+12, "if __name__ == '__main__':")
        call append(line(".")+13, "\tpass")
    elseif &filetype == 'lua'
        call setline(1,"-------------------------------------------------------------------------")
        call append(line("."), "--    File Name: ".expand("%"))
        call append(line(".")+1, "-- ")
        call append(line(".")+2, "--       Author: Taomee Shanghai,Inc.")
        call append(line(".")+3, "--         Mail: eden@taomee.com")
        call append(line(".")+4, "-- Created Time: ".strftime("%c"))
        call append(line(".")+5, "--  Description: ...")
        call append(line(".")+6, "-- ")
        call append(line(".")+7, "--")
        call append(line(".")+8, "-------------------------------------------------------------------------")
        call append(line(".")+9, "")
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")
    else
        call setline(1, "/*")
        call append(line("."),   " *************************************************************************")
        call append(line(".")+1, " *    File Name:  ".expand("%"))
        call append(line(".")+2, " *       Author: Taomee Shanghai,Inc.")
        call append(line(".")+3, " *         Mail: eden@taomee.com")
        call append(line(".")+4, " * Created Time: ".strftime("%c"))
        call append(line(".")+5, " * ")
        call append(line(".")+6, " *  Description: ...")
        call append(line(".")+7, " * ")
        call append(line(".")+8, " ************************************************************************")
        call append(line(".")+9, "*/")
        call append(line(".")+10, "")
    endif
    if expand("%:e") == 'cpp'
        call append(line(".")+10, "#include<iostream>")
        call append(line(".")+11, "using namespace std;")
        call append(line(".")+12, "")
    elseif expand("%:e") == 'cc'
        call append(line(".")+10, "#include<iostream>")
        call append(line(".")+11, "using namespace std;")
        call append(line(".")+12, "")
    endif
    if &filetype == 'c'
        call append(line(".")+10, "#include<stdio.h>")
        call append(line(".")+11, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+10, "#ifndef __".toupper(expand("%:r"))."__H")
        call append(line(".")+11, "#define __".toupper(expand("%:r"))."__H")
        call append(line(".")+12, "#endif")
    elseif expand("%:e") == 'hpp'
        call append(line(".")+10, "#ifndef __".toupper(expand("%:r"))."__H")
        call append(line(".")+11, "#define __".toupper(expand("%:r"))."__H")
        call append(line(".")+12, "#endif")
    endif
    if &filetype == 'java'
        call append(line(".")+10,"public class ".expand("%:r"))
        call append(line(".")+11,"")
    endif
    "新建文件后，自动定位到文件末尾
endfunc
autocmd BufNewFile * normal G

set nocp

set foldenable
"set foldmethod=indent 
set foldmethod=manual
"set foldmethod=syntax

set paste

autocmd BufRead \d\+-\(\w\+\)-\d\{6\}-\d\{4\}  set filetype=log

autocmd BufRead *.proto set filetype=proto

let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre="@synopsis  "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="eden"

autocmd BufNewFile,BufRead *.cc,*.c,*.h,*.hpp inoremap ,p <ESC>:Dox<CR>i | nnoremap ,p :Dox<CR> | vnoremap ,p :Dox<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置包括vundle和初始化相关的runtime path 
set nocompatible
"filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'gmarik/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 避免插件名冲突,例如L9已存在,则可以指定
Plugin 'user/L9', {'name': 'newL9'}

call vundle#end()

filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe 自动补全配置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'Valloric/YouCompleteMe'

if !exists("g:ycm_semantic_triggers")
   let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
set completeopt-=preview

"配置默认的ycm_extra_conf.py
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py' 

"按jb 会跳转到定义
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0   

"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tags_files = 0  " 占内存太厉害 

map ,yd :YcmDiags<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic配置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
