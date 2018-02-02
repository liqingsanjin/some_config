"configured by jing xin 2017-05-27
"打开语法高亮
syntax on
"使用配色方案
colorscheme desert
"打开文件类型检测功能
filetype on
"不同文件类型采用不同缩进
filetype indent on
"允许使用插件
filetype plugin on
filetype plugin indent on
"显示行号
set nu
"历史命令保存行数
set history=100
"允许鼠标定位
"set mouse=a
"当文件被外部改变时自动读取
set autoread
"取消自动备份及产生swp文件
set nobackup
set nowb
set noswapfile
"关闭vi模式
set nocp
"取消vi兼容，vi键盘模式不易用
set nocompatible
"高亮光标所在行
set cursorline
"总是显示状态栏
set laststatus=2
"状态栏显示当前命令
set showcmd
"粘贴时保持格式
set paste
"当前光标显示列号
set ruler
"高亮显示匹配的括号
set showmatch
"在搜索的时候忽略大小写
set ignorecase
"高亮被搜索的句子
set hlsearch
"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
"继承前一行的缩进方式，特别适用于多行注释
set autoindent
"智能缩进
set smartindent
"使用c样式的缩进
set cindent
"tab设置为2
set tabstop=2
"统一缩进为2
set softtabstop=2
set shiftwidth=2
set expandtab
"允许使用退格键
set backspace=eol,start,indent
"设定默认解码
set fenc=utf-8
"自动补全
filetype plugin indent on
set completeopt=longest,menu
"自动补全命令时候使用菜单式匹配列表
set wildmenu
"代码折叠
"set foldmethod=syntax
map <F5> :tabp<CR>
map <F6> :tabn<CR>
set clipboard=unnamed

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'VundleVim/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'fatih/vim-go'
Bundle 'dgryski/vim-godef'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree.git'
Bundle 'nsf/gocode', {'rtp': 'vim/'}
Bundle 'Blackrush/vim-gocode'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
call vundle#end()            " required
filetype plugin indent on    " required

let g:neocomplete#enable_at_startup = 1
syntax enable
let g:godef_split = 3
let g:godef_same_file_in_same_window = 1
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = 'goimports'
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
autocmd BufWritePre *.go :Fmt
"显示tab和空格
set list listchars=tab:>-,trail:-
