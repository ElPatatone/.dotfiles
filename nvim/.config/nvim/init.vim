" --- General 

syntax on

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set smartindent
set number
set numberwidth=1
set relativenumber
set mouse=a

" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" General
Plug 'morhetz/gruvbox'

call plug#end()

"--- Colors

set background=dark
set termguicolors
colorscheme gruvbox

