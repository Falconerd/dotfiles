set expandtab
set tabstop=2
set shiftwidth=2
set number
set relativenumber
set nohlsearch

filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'jparise/vim-graphql'
Plug 'sheerun/vim-polyglot'
" Plug 'https://github.com/bigfish/vim-js-context-coloring'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs'
Plug 'w0rp/ale'
Plug 'mhartington/nvim-typescript'
Plug 'trevordmiller/nova-vim'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'tpope/vim-abolish'
Plug 'numkil/ag.nvim'
Plug 'dodie/vim-disapprove-deep-indentation'

call plug#end()

" Prettier

let g:prettier#config#autoformat = 0
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.json,*.graphql,*.md PrettierAsync

" NERDTree

autocmd vimenter * NERDTree

" Use deoplete.

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_debug = 1
let g:deoplete#enable_profile = 1
call deoplete#enable_logging('DEBUG', '/usr/local/etc/deoplete.log')

" Ctrl-Space for completions
inoremap <silent><expr> <C-Space> deoplete#mappings#manual_complete()

" deoplete-tern

let g:deoplete#sources#ternjs#tern_bin = '/usr/local/lib/node_modules/tern/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#guess = 1
let g:deoplete#sources#ternjs#sort = 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0
let g:deoplete#sources#ternjs#filtetypes = [ 'javascript.jsx', 'jsx', 'js', 'vue' ]

" Ale

let g:ale_fixers = { 'javascript': ['eslint'] }

" Airline

let g:airline_powerline_fonts = 1

" Tab Shortcuts
nnoremap tk :tabfirst<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tj :tablast<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :CtrlSpaceTabLabel<CR>
nnoremap td :tabclose<CR>

" Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Color

colorscheme nova

set colorcolumn=50,72,100
highlight ColorColumn ctermbg=1
