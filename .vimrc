" Bring Vim into 1990s
set nocompatible

" Turn on syntax highlighting
syntax enable

" Differentiate between filetypes and set different indentation rules
filetype plugin indent on

" Stick to convention (Tab width, tabs = spaces)
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

colorscheme NeoSolarized
set background=dark

" Navigate project files (tab-completion all file-related tasks)
set path+=**

" Easier to navigate viles (matching files at bottom)
set wildmenu

" Easier to get around (Relative numbers + line number)
set relativenumber
set number

" Allow line numbers in zen mode
let g:goyo_linenr=1

set t_Co=256

" Show column indicators
set colorcolumn=50,72,80,100,120
highlight ColorColumn ctermbg=8

" Change color of the sign column
highlight SignColumn ctermbg=0
set signcolumn=yes

" Color for Line Numbers
highlight LineNr ctermbg=0
highlight CursorLineNR ctermbg=0 ctermfg=gray

" Unmap space
nn <space> <nop>

" Set the leader key <space>
let mapleader = ' '

" Show command at the bottom right
set showcmd

set hidden

set cmdheight=2

" Set message times
set updatetime=300

" Set coc hotkeys
nn <leader>rn <Plug>(coc-rename)
nn <leader>gd <Plug>(coc-definition)
nn <leader>gt <Plug>(coc-type-definition)
nn <silent> <leader>gi <Plug>(coc-implementation)
nn <silent> <leader>h :call CocAction('doHover')<CR>
nn <silent> <leader>r <Plug>(coc-references)
nn <silent> <leader>p :call CocActionAsync('format')<CR>

" Easy find hotkey
nn <silent> <leader>f :fin 

" Jump to next marker
:ino <space><space> <esc>/<++><cr>"_c4l

" Add docs to autocomplete window
"set completeopt+=preview
"autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Plugins
call plug#begin()

" Syntax for Elm
Plug 'andys8/vim-elm-syntax'

" Edit surrounding symbols
Plug 'tpope/vim-surround'

" Easier Commenting
Plug 'tpope/vim-commentary'

" Coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Language Server
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'

" Autocomplete
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-tags.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'nightsense/carbonized'
Plug 'iCyMind/NeoSolarized'

" Zen mode
Plug 'junegunn/goyo.vim'

" Git
" Plug 'tpope/vim-fugitive'

call plug#end()


hi CocErrorFloat ctermfg=11 ctermbg=16
hi CocFloating  ctermbg=16
