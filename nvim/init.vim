" Setting the leader
" 2022-01-08
let mapleader=' '

set nocompatible

" General settings
set title
set wildmenu
set ruler
set hlsearch
set showmatch
" No sound on errors
set noerrorbells
set novisualbell

set encoding=utf8
set ffs=unix,dos,mac
set nobackup
" set noswapfile " Do not create the swap file.
set autoread " Reread the file if it's modified outside the vim.
set ignorecase
set smartcase " Works only if ignorecase is set. ignores the case if all written in lowercase otherwise searches for case-sensitive options.
set incsearch " Shows search results as typing in search mode.
set backspace=2
set scrolloff=3 " Minimum number of screen lines to keep above and below the cursor.
set ttyfast
set ai
set si
set wrap
set number
" set relativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set colorcolumn=90
"set mouse=a " Enable mouse for all modes.

" Show invisible chars
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Useful mappings for managing tabs
map <leader>te :tabedit<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabn<cr>
map <leader>tp :tabp<cr>

" call plug#begin('~/.config/nvim/plugged')
" 
" Plug 'kien/ctrlp.vim'
" " Comment/Uncomment tool
" Plug 'scrooloose/nerdcommenter'
" " Switch to the begining and the end of a block by pressing %
" Plug 'tmhedberg/matchit'
" " A Tree-like side bar for better navigation
" Plug 'scrooloose/nerdtree'
" " A cool status bar
" Plug 'vim-airline/vim-airline'
" " Airline themes
" Plug 'vim-airline/vim-airline-themes'
" " Better syntax-highlighting for filetypes in vim
" Plug 'sheerun/vim-polyglot'
" " Nord theme
" Plug 'arcticicestudio/nord-vim'
" " Git integration
" Plug 'tpope/vim-fugitive'
" " Auto-close braces and scopes
" Plug 'jiangmiao/auto-pairs'
" " Preview markdown inside the browser
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'junegunn/goyo.vim'
" Plug 'rhysd/git-messenger.vim'
" 
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'preservim/tagbar'
" Plug 'airblade/vim-rooter'
" Plug 'psf/black', { 'branch': 'stable' }
" Plug 'junegunn/vim-easy-align'
" call plug#end()

" Color and syntax highlighting
filetype plugin indent on
syntax on
" let g:onedark_terminal_italics=1
" let g:onedark_termcolors=256
" colorscheme nord
colorscheme peachpuff

" Split windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Ctrl-P
let g:ctrlp_map = '<c-p>' 

" Nerd Tree
map <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Show hidden files in NerdTree buffer.
set secure

" Tagbar
noremap <leader>tb :TagbarToggle<CR>

" Map Esc
inoremap jj <Esc>
" inoremap kk <Esc>

" Window management
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>ws :split<CR>
nnoremap <leader>wc :q<CR>

" Disable Autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Clipboard
set clipboard=unnamed

" Fuzzy finder in Project
nnoremap <leader>pf :FZF<CR>
" Faster for smaller projects
nnoremap <leader>ff :CtrlPRoot<CR>
" Faster for smaller projects
nnoremap <leader>. :CtrlP<CR>

" This is the Open FZF in split
let g:fzf_action = {
  \ 'alt-t': 'tab split',
  \ 'alt-s': 'split',
  \ 'alt-v': 'vsplit' }

" Autopep8
"let g:autopep8_disable_show_diff = 1
"let g:autopep8_on_save = 1

" " Airline
" let g:airline_theme='nord'
" " User powerline symbols in Airline
" let g:airline_powerline_fonts = 1
" 
" autocmd BufNewFile,BufRead *.tpl set filetype=yaml
