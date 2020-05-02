colorscheme simple
syntax on                                               " turn on syntax highlighting

filetype plugin on                                      " load plugins based on file type
set omnifunc=syntaxcomplete#Complete                    " enable omnicomplete <C-x><C-o>

set signcolumn=yes:1                                    " always enable sign column

filetype indent on                                      " load indentation based on file tpye
set shiftwidth=4                                        " number of spaces to use for indenting
set softtabstop=4                                       " number of spaces to use when inserting a tab
set tabstop=8                                           " show tabs as 8 spaces
set expandtab                                           " expand tabs to spaces
set autoindent                                          " indent based on prev line

set textwidth=80                                        " wrap text to 80 columns

set ignorecase smartcase                                " search case-inensitive if not using upper case

set hidden                                              " allow unsaved buffers to be hidden

set ruler                                               " show line and column number in status
set showcmd                                             " show current command in status

set visualbell                                          " disable ding sound

set scrolloff=5                                         " keep 5 lines visible when scrolling

set splitbelow splitright                               " put new split windows below and right

set fillchars+=vert:\                                   " remove pipes from split

set noshowmode                                          " do not show mode because using lightline.vim

let mapleader=" "                                       " set <space> to leader


" MAPPINGS


" remove mapping from space in normal mode
nnoremap <SPACE> <NOP>

" open a list of buffers and wait for input, easily switch between buffers
nnoremap <SPACE>b :ls<CR>:b<SPACE>

" better saving
nnoremap <SPACE>s :w<CR>

" better quitting
nnoremap <SPACE>q :q<CR>

" cycle buffers
nnoremap <SPACE><TAB> :bn<CR>

" remove highlighting
nnoremap <SPACE>n :noh<CR>


" PLUGINS


call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'takac/vim-hardtime'
call plug#end()


" LANGUAGE SERVER SETTINGS

" mappings nnoremap <SILENT> K :call <SID>show_documentation()<CR>
nnoremap <SILENT> <SPACE>gd <Plug>(coc-definition)
nnoremap <SILENT> <SPACE>gy <Plug>(coc-type-definition)
nnoremap <SILENT> <SPACE>gi <Plug>(coc-implementation)
nnoremap <SILENT> <SPACE>rn <Plug>(coc-rename)

nnoremap <SILENT> [g <Plug>(coc-diagnostic-prev)
nnoremap <SILENT> ]g <Plug>(coc-diagnostic-next)

nnoremap <SILENT> L :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction


" CODECLAP

nnoremap <F4> :call CodeClapRunToCursor()<CR>
function CodeClapRunToCursor()
    :call system('./ccdebug ' . expand('%:t') . ' ' . line("."))
endfunction

nnoremap <F5> :call CodeClapRunToMain()<CR>
function! CodeClapRunToMain()
    :call system('./ccdebug')
endfunction


" LIGHTLINE


let g:lightline = {
    \ 'colorscheme': 'simpleblack',
    \ }


" FZF


nnoremap <SPACE>f :Files<CR>
nnoremap <SPACE>rg :Rg<SPACE>
