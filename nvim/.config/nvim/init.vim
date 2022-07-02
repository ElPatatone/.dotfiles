" --- General 

syntax on

set termguicolors
set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set shiftwidth=4
set number
set numberwidth=4
set incsearch
set nohlsearch
set splitbelow
set splitright
set hidden
set scrolloff=8
set undofile
set mouse=a
set ignorecase
set smartcase

" --- Plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()


"--- Colors

colorscheme gruvbox

