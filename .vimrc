"------------vim-plug-BEG------------"
" # installl
" $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
" Make sure you use single quotes

Plug 'scrooloose/nerdtree'

" nord colorscheme
Plug 'arcticicestudio/nord-vim'

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

"typescript syntax
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" FZF / Ctrlp for file navigation
if executable('fzf')
  " OSX vs Linux loading (depending on where fzf is)
  let s:uname = system("echo -n \"$(uname)\"")
  if !v:shell_error && s:uname == "Darwin"
    Plug '/usr/local/opt/fzf'
  else
    Plug 'junegunn/fzf', {'dir': '~/.local/src/fzf', 'do': './install --all' }
  endif
  Plug 'junegunn/fzf.vim'
else
  Plug 'ctrlpvim/ctrlp.vim'
endif

" Rust Plugins
if executable('rustc')
  Plug 'rust-lang/rust.vim', { 'for': 'rust' }
  Plug 'racer-rust/vim-racer', { 'for': 'rust' }
endif

" Initialize plugin system
call plug#end()
"------------vim-plug-END------------"

"语法高亮
syntax on
"开启256色
set t_Co=256
"支持真彩色
set termguicolors
"显示行号
set nu
colorscheme nord
"自动缩进
" - autoindent 新增加的行和前一行使用相同的缩进形式。
" - smartindent 除了autoindent的功能外，能正确的识别出花括号，当遇到右花括号，则取消缩进形式。此外还增加了识别C语言关键字的功能。如果一行是以#开头的，那么这种格式将会被特殊对待而不采用缩进格式。
" - cindent 很好的识别出C和Java等结构化程序设计语言，并且能用C语言的缩进格式来处理程序的缩进结构
set autoindent
"空格缩进宽度
set shiftwidth=2
"tab宽度
set tabstop=2
set softtabstop=2
"tab当作空格
set expandtab
"默认编码
set encoding=utf-8
" 光标行提示(下划线)
set cursorline
"Leader key
let mapleader = ","
" arrow keys disable(禁用方向键)
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <up> <nop>

vnoremap <right> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <up> <nop>

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

" racer
" install
" 1. rustup toolchain add nightly
" 2. cargo +nightly install racer
set hidden
let g:racer_cmd = "/Users/yiranfeng/.cargo/bin/racer"
" show the complete function definition (e.g. its arguments and return type)
let g:racer_experimental_completer = 1
let $RUST_SRC_PATH="/usr/local/src/rustc/src"

au FileType rust nmap <leader>rx <Plug>(rust-doc)
au FileType rust nmap <leader>rd <Plug>(rust-def)
au FileType rust nmap <leader>rs <Plug>(rust-def-split)

" fzf
" brew install fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

