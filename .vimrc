set ai
set nowrap
let mapleader = " "
set ruler

nnoremap <leader>T :NERDTreeToggle<cr>
nnoremap <leader>I :PluginInstall<cr>

set nocompatible
set ignorecase
set tabstop=2
set number
set shiftwidth=2
set pastetoggle=<F10>
set showmode
set mouse=a
set clipboard+=unnamed "yank onto clipboard

set splitbelow
set splitright

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'cakebaker/scss-syntax.vim'

call vundle#end()
filetype plugin indent on

"CtrlP setup
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" position, order, min height, max height, num of results
let g:ctrlp_match_window = 'bottom,order:btt,min:20,max:20,results:20'

"highlight StatusLine ctermfg=black ctermbg=White cterm=bold
highlight StatusLine cterm=reverse ctermfg=yellow  ctermbg=white
" file path [line number] [encoding] [filetype]
"[%{strlen(&fenc)?&fenc:&enc}]\
set statusline=%F%m%r%h%w\ [%n]\%=\ [line\ %l\/%L]\ [%{&filetype}]

syntax on
set background=dark
colorscheme base16-ocean
