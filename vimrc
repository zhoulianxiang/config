"lianxiang.zhou vim setting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-scripts/winmanager.git'
Plug 'https://github.com/vim-scripts/bufexplorer.zip.git'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" basic setting
set nocompatible
filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => display setting
set number
set ruler
set laststatus=2
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => color setting
set t_Co=256
colo koehler

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search setting
set hlsearch
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => winManager
nmap wm :WMToggle<cr>:wincmd t<cr>
let winManagerWidth=40

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufExplorer
nmap be :BufExplorer<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagList
nmap tl :TlistToggle<cr>
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Enable_Fold_Column=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Highlight_Tag_On_BufEnter=1
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlp 

""""""""""""""""""""""""""""""
" => hot key
nmap =d :r !date +\%y\%m\%d\%H\%M<CR>
nmap =p :set paste<CR>
nmap =e :set nopaste<CR>
