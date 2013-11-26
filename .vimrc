" Disable vi-compatibility
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0


Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-powerline'


" General indentation options
set shiftwidth=4 
set softtabstop=4
set nu
set backspace=indent,eol,start

" Remember more history
set history=1000
 
" Permanent undo
set undofile

" set a directory to store the undo history
set undodir=~/.vim/undo/
 
" Always show the statusline
set laststatus=2
 
" Highlight the current line
set cursorline
 
" keep more context when scrolling off the end of a buffer
set scrolloff=3
 
" Show line numbers
set number
set ruler
syntax on

" Set encoding
set encoding=utf-8
 
" Disable swap files
set noswapfile
" Set the map leader
let mapleader = ","
let maplocalleader = "-"
 
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Unfuck my screen
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>
 
" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=4
set softtabstop=2
set expandtab
set listchars=tab:▸\ ,eol:¬,trail:·
 
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
 
" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
" unlight search selection when pressing enter
:nnoremap <CR> :nohlsearch<cr>:call MarkMultipleClean()<cr>
 
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
 
" load the plugin and indent settings for the detected filetype
filetype plugin indent on
 
" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
 
" Use modeline overrides
set modeline
set modelines=10
 
" Default color scheme
" Set the 256 color mode for terminal
set t_Co=256
"colorscheme Tomorrow-Night-Bright
"colorscheme hybrid
 
"Font config Linux and Mac
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata-dz\ for\ Powerline\ 8
        set guioptions+=m  "leave menu bar
        set guioptions-=T  "remove toolbar
        set guioptions-=r  "remove right-hand scroll bar
    else
        set guifont=Inconsolata-dz\ for\ Powerline:h16
    endif
endif
 
"Right Column margin indicator
:set cc=80
 
"No beeping and visual bell
set noeb vb t_vb=
 
"Powerline, the ultimate vim status bar
let g:Powerline_symbols = 'unicode'


" A dirty trick for preventing me to use arrow keys
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>
noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>
 
" NAVIGATION
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
 
" Easier switch among buffers
nnoremap <silent> H :bp<CR>
nnoremap <silent> L :bn<CR>
 
"Shows cmd pressed in normal mode
set showcmd
 
