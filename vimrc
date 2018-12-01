"lianxiang.zhou vim setting
set nocompatible

" plugin
" 对我来讲，一个编辑器需要如下插件：
" 1.File浏览
" 2.Buffer浏览
" 3.Tag浏览
" 4.File/Buffer/Tag搜索功能
" 5.特定的用途，比如语言、或特殊格式的文件
" ----
" 0.plugin - vim-plug, https://github.com/junegunn/vim-plug
" 1.File - nerdtree, https://github.com/scrooloose/nerdtree.git
" 2.Buffer - bufexplorer, https://github.com/jlanzarotta/bufexplorer
" 3.Tag - tagbar, https://github.com/majutsushi/tagbar.git
" 4.Search - LeaderF, https://github.com/Yggdroot/LeaderF
" 5.markdown - vim-markdown, https://github.com/plasticboy/vim-markdown
" 6.GO - vim-go, https://github.com/fatih/vim-go
" 7. ...
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')
"vim-plug
Plug 'junegunn/vim-plug'
"nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"bufexplorer
Plug 'jlanzarotta/bufexplorer'
"tagbar
Plug 'majutsushi/tagbar'
"leaderF
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"vim-go
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" basic settings
set t_Co=256
colorscheme koehler
syntax on
set number
set ruler
set laststatus=2
set showcmd
set hlsearch
set incsearch
set nobackup
set nowritebackup
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set linebreak
set fo+=mB
set autoindent
set smartindent
set whichwrap=b,s,<,>,[,]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
nmap <leader>nt :NERDTreeToggle<cr>
let NERDTreeWinPos="right"
let NERDTreeWinSize=40

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufExplorer
nmap <leader>be :BufExplorer<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
nmap <leader>tb :TagbarToggle<cr>
let g:tagbar_autofocus=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => leaderF 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
let g:go_list_type="quickfix"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => hot key
nmap <leader>d :r !date +\%y\%m\%d\%H\%M<CR>
nmap <leader>p :set paste<CR>
nmap <leader>e :set nopaste<CR>


