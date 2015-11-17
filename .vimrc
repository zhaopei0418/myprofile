set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'vim-scripts/rails.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kshenoy/vim-signature'
Bundle 'szw/vim-tags'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'yegappan/grep'
Bundle 'dyng/ctrlsf.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/SuperTab'
Bundle 'vim-scripts/Syntastic'
Bundle 'vim-scripts/Auto-Pairs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'mbbill/undotree'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'minibufexpl.vim'
Bundle 'comments.vim'
Bundle 'winmanager'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-haml'
Bundle 'genoma/vim-less'
Bundle 'Raimondi/delimitMate'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5.vim'
Bundle 'docunext/closetag.vim'
Bundle 'gregsexton/MatchTag'
Bundle 'easymotion/vim-easymotion'
Bundle 'terryma/vim-expand-region'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'rstacruz/vim-ultisnips-css'
Bundle 'tacahiroy/ctrlp-funky'
Bundle "pangloss/vim-javascript"
Bundle 'othree/yajs.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'marijnh/tern_for_vim'
Bundle 'mbriggs/mark.vim'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'Xuyuanp/nerdtree-git-plugin'

"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on
filetype plugin on
" 非插件环境
" 定义快捷键到行首和行尾
nmap lb 0
nmap le $
" 设置快捷键将选中文本块复制至系统剪贴板
"vnoremap <Leader>y "+y
"" 设置快捷键将系统剪贴板内容粘贴至 vim
"nmap <Leader>p "+p
"" 定义快捷键关闭当前分割窗口
nmap q :q<CR>
nmap qa :qa<CR>
" 定义快捷键保存当前窗口内容
nmap wr :w<CR>
"" 定义快捷键保存所有窗口内容并退出 vim
nmap WQ :wa<CR>:q<CR>
"" 不做任何保存，直接退出 vim
nmap Q :qa!<CR>
" 依次遍历子窗口
nmap nw <C-W><C-W>
" 跳转至右方的窗口
nmap lw <C-W>l
" 跳转至左方的窗口
nmap hw <C-W>h
" 跳转至上方的子窗口
nmap kw <C-W>k
" 跳转至下方的子窗口
nmap jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
"nmap pa %
" 开启文件类型侦测
filetype on
" 开启语法高亮功能
syntax enable
" 允许用指定的语法高亮配色方案替换默认方案
syntax on
set background=dark
"set background=light
"colorscheme solarized
"let g:solarized_termcolors=256
colorscheme molokai
"colorscheme phd

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
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" vim-signature key
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }
" 设置 tagbar 子窗口的位置出现在主编辑区的右边 
"let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
"nnoremap <Leader>tl :TagbarToggle<CR> 
nmap tl :TagbarToggle<CR>
" 自动启动tagbar
"autocmd vimenter * Tagbar
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
    \ ],
    \ 'sro' : '::',
    \ 'kind2scope' : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
        \ 'enum' : 'g', 
        \ 'namespace' : 'n',
        \ 'class' : 'c',
        \ 'struct' : 's',
        \ 'union' : 'u'
    \ }
\ }
" 使用 ctrlsf.vim
" 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in
" project
nmap sp :CtrlSF<CR>
" NERDTree配置
"autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>
"下面的代码放到自己的vimrc配置中即可"
 
let g:winManagerWindowLayout='NERDTree|Tagbar'
let g:winManagerWidth=30
let g:AutoOpenWinManager = 1 "这里要配合修改winmanager.vim文件，见下方说明"
  
let g:NERDTree_title = "[NERDTree]"
function! NERDTree_Start()
    exe 'q'
    exe 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction

let g:Tagbar_title = "[Tagbar]"
function! Tagbar_Start()
    exe 'q'
    exe 'TagbarOpen'
endfunction
function! Tagbar_IsValid()
    return 1
endfunction
let g:tagbar_vertical = 30
"
" 配置undotree
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
nnoremap <F5> :UndotreeToggle<cr>
