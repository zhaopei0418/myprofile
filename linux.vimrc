set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltog/vim-powerline'

Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/rails.vim'
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" 开启语法高亮功能
syntax enable
" 允许用指定的语法高亮配色方案替换默认方案
syntax on
set background=dark
colorscheme cobalt
set number
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示流动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

let g:AutoPairsFlyMode = 1
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 12
" 禁止折行
set nowrap
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
set laststatus=2
set statusline+=%{fugitive#statusline()}

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2

set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable
" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
