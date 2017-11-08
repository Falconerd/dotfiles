set colorcolumn=50,72,100
highlight ColorColumn ctermbg=0
set expandtab
set tabstop=2
set shiftwidth=2

filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'

call plug#end()

" Prettier

let g:prettier#config#autoformat = 1
