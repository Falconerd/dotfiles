set colorcolumn=50,72,100
set expandtab
set tabstop=2
set shiftwidth=2

filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'

call plug#end()
