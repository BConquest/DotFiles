syntax on

augroup specify_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

autocmd FileType text,markdown setlocal spell
autocmd FileType text,markdown setlocal textwidth=180

set clipboard=unnamedplus

set autoread

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

set showmatch

set number
set relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set nowrap

set nobackup
set noswapfile
set undodir=~/.local/share/nvim/undodir
set undofile

set incsearch

set ignorecase
set smartcase

set colorcolumn=80

call plug#begin()

" Code Completion
Plug 'neoclide/coc.nvim'

" Start Page
Plug 'mhinz/vim-startify'

" Languages
Plug 'dart-lang/dart-vim-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

set pyx=3
