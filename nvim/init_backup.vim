" *--------------------*
" | 000 INITIALIZATION |
" *--------------------*-------------------------
set nocompatible " forget about compatibility with old vi
set t_Co=256 " force 256 colors on the terminal

" *-------------*
" | CHANGE WORD |
" *-------------*--------------------------------
" When changing work, the cw command no longer instantly clobbers
" the word.  Instead, it surrounds the word with a $ at the end of the 
" word being changed.
set cpoptions+=$


" *--------*
" | COLORS |
" *--------*-------------------------------------
"*cterm-colors*
"
"NR-16   NR-8    COLOR NAME 
"0       0       Black
"1       4       DarkBlue
"2       2       DarkGreen
"3       6       DarkCyan
"4       1       DarkRed
"5       5       DarkMagenta
"6       3       Brown, DarkYellow
"7       7       LightGray, LightGrey, Gray, Grey
"8       0*      DarkGray, DarkGrey
"9       4*      Blue, LightBlue
"10      2*      Green, LightGreen
"11      6*      Cyan, LightCyan
"12      1*      Red, LightRed
"13      5*      Magenta, LightMagenta
"14      3*      Yellow, LightYellow
"15      7*      White
"
" :runtime syntax/colortest.vim  // to see colors rendered
"darkpurple #8b475d (139, 71, 93)
"cream      #ffefd5 (255,239,213)
"
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
syntax enable " keep your current color settings and allows :highlight commands
"syntax on " make Vim overrule your color settings
set showmode " turn on showing of current mode
" colorschemes
"colo blue
"colo darkblue
"set background=light
"colo default
"set background=light
"colo delek
"colo desert
"colo evening
"colo koehler
"colo morning
"colo murphy
"colo pablo
"colo peachpuff
"colo ron
"colo shine
"colo slate
"colo torte
"colo zelner
"colorscheme solarized
"set background=light " change from default to light background
"set background=dark " change from default to dark background
syntax on
color dracula
set t_Co=256 " force 256 colors on the terminal
"
"
" *--------*
" | COLUMN |
" *--------*-------------------------------------
set colorcolumn=80 " homage to the IBM punch card with 80 columns

" *--------*
" | CURSOR |
" *--------*-------------------------------------
set cursorline " highlight current line with an underline
"hi cursorline cterm=none " turn off the default underline
"hi cursorline 
hi cursorline ctermbg=238
au InsertEnter * hi CursorLine ctermbg=black guibg=black 
"au InsertLeave * hi CursorLine ctermbg=gray guibg=gray 
au InsertLeave * hi CursorLine ctermbg=238
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor 
" set guicursor+=i:ver100-iCursor " vertical bar to 100%, default is 25%
" set guicursor+=n-v-c:blinkon0 " disable blinking cursor
" set guicursor+=a:blinkon0 " cursor blink to off
" set guicursor+=i:blinkwait10 " increase blink rate for insert mode

" *-------*
" | FOLDS |
" *-------*--------------------------------------
" set foldmethod=indent
" hi Folded ctermbg=black


" *----------*
" | KEYBOARD |  
" *----------*-----------------------------------
" map jj to the <esc> key since latter is not in the home row
imap jj <Esc> 
" map jk t the <esc> key since jk out of habit in normal mode
" will just move down and then up, whereas jj will not
" The jk map is not great for writing in the Dutch language
inoremap jk <esc> 
"
set mousehide " hide mouse pointer while typing
set ignorecase " ignore caps lock

" *--------------*
" | LINE NUMBERS |
" *--------------*-------------------------------
set number " turn on line numbering
highlight LineNr ctermbg=gray ctermfg=blue guibg=gray guifg=blue


" *-----------*
" | SCROLLING |
" *-----------*----------------------------------
set scrolloff=999 " center the cursor vertically in screen center


" *----------*
" | SPELLING |
" *----------*-----------------------------------
set spell " enable spell check
" For misspelled words, change from red block highlight to red underline
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red


" *-------------*
" | STATUS LINE |
" *-------------*--------------------------------
" status line like Derek Wyatt
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
"
hi StatusLine ctermbg=black ctermfg=red
"
" https://gist.github.com/igoodrich/5072880
au InsertEnter * hi StatusLine ctermbg=black ctermfg=green
au InsertLeave * hi StatusLine ctermbg=black ctermfg=red
"
set laststatus=2 " command line two lines high
set showcmd " show command being typed


" *------*
" | TABS |
" *------*---------------------------------------
" Insert four spaces for a single press of the TAB key
set smartindent
set tabstop=4
"set shiftwidth=4
"set expandtab


" *--------------------*
" | VIMRC QUICK UPDATE | 
" *--------------------*-------------------------
" See learnvimscriptthehardway.stevelosh.com/chapters/07.html
" The idea: make it easier to make it easier to edit text.
nnoremap <leader>ve :split $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>


" *----------------------*
" | ZZZ TO BE DETERMINED |
" *----------------------*-----------------------
" Allow CTRL-s to save existing file while in insert mode
" does the save, and then returns again to insert mode
":imap <c-s> <c-o><c-s>
" From shebangme.blogspot.com/2011/10/make-vim-save-files-with-ctrl-s-like.html
"map <C-s> :w<CR>
"imap <C-s> <Esc>:w<CR>i
" From p186, Unix for Mac OS X Users
"map ^s :w<CR>
"imap ^s <Esc>:w<CR>i
" From vimdoc.sourceforge.net
"map CTRL-W :w<CR>
"imap CTRL-W<Esc>:w<CR>i
"imap CTLR-s <Esc>:w<CR>i
 
" http://vi.stackexchange.com/questions/2419/mapping-ctrls-does-not-work
" Allow Ctrl-s and Ctrl-q as keybinds
" silent !stty -ixon
" Restore default ixon behavior when leaving vim
" autocmd VimLeave * silent !stty ixon
 
" normal (non-insert) mode save file
" nmap <c-s> :w<CR> 
" nnoremap <c-s> :w<CR>
" insert mode save file 
" imap <c-s> <esc>:w<CR>i
" inoremap <c-s> <Esc>:w<CR>i
" visual mode save file
" vnoremap <c-s> <Esc>:w<CR>



