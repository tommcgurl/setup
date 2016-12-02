execute pathogen#infect()
syntax on
set background=dark
set number
set backspace=2
set tabstop=2
set expandtab
set ignorecase
set smartcase
colorscheme deep-space
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:imap jj <Esc>
