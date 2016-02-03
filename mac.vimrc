set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'flazz/vim-colorschemes'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'minibufexpl.vim'
Bundle 'msanders/snipmate.vim'
"Bundle 'dyng/ctrlsf.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-bundler'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-endwise'
Bundle 'thoughtbot/vim-rspec'
Bundle 'danro/rename.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'tpope/vim-surround'
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/tComment'
"Bundle 'tomtom/tcomment_vim'
Bundle 'mattn/emmet-vim'
Bundle 'godlygeek/tabular'
Bundle 'easymotion/vim-easymotion'
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-run-interactive'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-unimpaired'

filetype plugin indent on    " required
filetype plugin on
" syntastic 设置
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 设置字符集为UTF-8
set encoding=utf-8
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
"let g:Powerline_symbols='fancy'
"set statusline+=%{fugitive#statusline()}

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
set list
set list lcs=trail:·,tab:»·
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2

set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable
" 开启实时搜索功能
set incsearch

" NERDTree设置
map <F7> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Tagbar设置
nmap <F8> :TagbarToggle<CR>
" ctrlsf.vm 设置
"let g:ctrlsf_ackprg = 'ag'

" 搜索时大小写不敏感
set ignorecase
" 设置ctrlp.vim
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
let g:ctrlp_map = '<F9>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(atom|git|hg|svn)$'
let g:ctrlp_user_command = 'find %s -type f'
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" Add this to your vimrc to provide a shortcut
nnoremap <leader>ri :RunInInteractiveShell<space>

" 快速移动文本块
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
" 设置wildmode 跟bash shell一样
set wildmode=longest,list
" 设置命名行补全方式跟zsh一样
"set wildmenu
"set wildmode=full
" 设置保存历史命令记录为200条
set history=200
" 结合C-n,C-p与Up, Down键的优点
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" 扩展%:h
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
