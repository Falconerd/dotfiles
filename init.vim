filetype plugin on                                      " load plugins based on file type

syntax on                                               " turn on syntax highlighting

filetype indent on                                      " load indentation based on file tpye
set shiftwidth=4                                        " number of spaces to use for indenting
set softtabstop=4                                       " number of spaces to use when inserting a tab
set tabstop=8                                           " show tabs as 8 spaces
set expandtab                                           " expand tabs to spaces
set autoindent                                          " indent based on prev line

set ignorecase smartcase                                " search case-inensitive if not using upper case

set hidden                                              " allow unsaved buffers to be hidden

set ruler                                               " show line and column number in status
set showcmd                                             " show current command in status

set visualbell                                          " disable ding sound

set scrolloff=5                                         " keep 5 lines visible when scrolling

set splitbelow splitright                               " put new split windows below and right

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
