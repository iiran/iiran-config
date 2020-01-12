""" 不要的键
noremap t <nop>

" 语法高亮
syntax on
" 开启256色
set t_Co=256
" 支持真彩色
set termguicolors
" 显示行号
set nu
" 显示相对行号
set relativenumber
" 自动缩进
" - autoindent 新增加的行和前一行使用相同的缩进形式。
" - smartindent 除了autoindent的功能外，能正确的识别出花括号，当遇到右花括号，则取消缩进形式。此外还增加了识别C语言关键字的功能。如果一行是以#开头的，那么这种格式将会被特殊对待而不采用缩进格式。
" - cindent 很好的识别出C和Java等结构化程序设计语言，并且能用C语言的缩进格式来处理程序的缩进结构
set smartindent
" 空格缩进宽度
set shiftwidth=2
" tab宽度
set tabstop=2
set softtabstop=2
" tab当作空格
set expandtab
" 光标永远远离边界几行
set scrolloff=5
" 显示行尾的空格
" set list
" 默认编码
set encoding=utf-8
" 显示输入的命令
set showcmd
" 光标行提示(下划线)
set cursorline
" 自动补全命令
set wildmenu
" 显示当前模式
set showmode
" 自动代码折叠
set foldmethod=indent
" 代码太长自动折行
set wrap
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。
set linebreak
" 使用系统剪切板
set clipboard=unnamedplus
"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set showmatch
" 高亮搜索结果
" set hlsearch
" set nohlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set incsearch
" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autoread
" 打开撤销历史
" set undofile
" 不创建swp文件
" set noswapfile
" 不创建备份文件
" set nobackup
" 忽略搜索时候的大小写
set ignorecase
" set smartcase
" 历史记录条数
set history=1000
" 一行多长就自己换行
set textwidth=100 
" 指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2
" 是否显示状态栏(最下) 0 不显示, 1 在多窗口下显示, 2 始终显示
set laststatus=2
" 显示哪行哪列
set ruler
" Leader key
let mapleader = " "
" arrow keys disable(禁用方向键)
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <up> <nop>

vnoremap <right> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <up> <nop>
" 在屏幕之间移动
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l
"调整分屏大小
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
"创建标签页面
noremap tn :tabe<CR>
"切换标签页面
noremap t- :-tabnext<CR>
noremap t= :+tabnext<CR>
" panes(划分窗口)
" SUPER + d 左右划分
nnoremap <leader>d :vsp<cr>
set splitright
" SUPER + s 上下划分
nnoremap <leader>s :split<cr>
set splitbelow

" Edit vimrc
" SUPER + e -> v 编辑vimrc
nnoremap <leader>ev :edit $MYVIMRC<cr>
" :source % 刷新vimrc

" mouse
set mouse=a

filetype plugin on

