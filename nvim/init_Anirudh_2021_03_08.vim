" Plugins
call plug#begin('~/.vim/plugged')

" Tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/tagbar'

" Color scheme
Plug 'christianchiarulli/nvcode-color-schemes.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Commenting
Plug 'tpope/vim-commentary'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive'

call plug#end()

" Use deoplete
let g:deoplete#enable_at_startup=1

" Colorscheme
let g:nvcode_termcolors=256
syntax on
colorscheme onedark
set termguicolors

" Powerline
let g:airline_powerline_fonts=1
let g:Powerline_symbols='fancy'
let g:airline_theme='onedark'

" Line numbers
set number
set relativenumber

" Tabs
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" Colour column
set cc+=89

" Mappings
let mapleader = ";"

" Insert mode to Normal mode
inoremap jj <Esc>
inoremap kk <Esc>

" Remove highlighting
noremap <leader>nh :noh<CR>

" Tagbar
noremap <leader>tb :TagbarToggle<CR>
inoremap <leader>tb <Esc>:TagbarToggle<CR>

" Autocomplete
inoremap <expr> <M-j> pumvisible() ? "\<C-n>" : "\<M-j>"
inoremap <expr> <M-k> pumvisible() ? "\<C-p>" : "\<M-k>"

" Nerdtree
noremap <leader>nt :NERDTreeToggle<CR>
inoremap <leader>nt <Esc>:NERDTreeToggle<CR>
