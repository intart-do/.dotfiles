call plug#begin('~/.local/share/nvim/plugged')

" List of plugins
" Continuously updated session files
Plug 'tpope/vim-obsession'

" Lean and mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" A collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
Plug 'ctrlpvim/ctrlp.vim'

" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" a git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Base16 for Vim
Plug 'chriskempson/base16-vim'

" Initialize plugin system
call plug#end()

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Needed by CtrlP
" set runtimepath^=~/.local/share/nvim/plugged/ctrlp.vim

" vim-airline options
let g:airline_theme='base16_solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#obsession#enabled = 1

" Enable syntax highlighting
if !exists("g:syntax_on")
    syntax enable
endif

" Set theme
set termguicolors
set background=dark
colorscheme base16-solarized-dark

" Always show current position
set ruler

" Show current line number and all others relative to current 
set number relativenumber

" Highlight current line
set cursorline

" Redraw only when we need to
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" Tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Minimum lines to keep above and below cursor
set scrolloff=5

" New splits open to right and bottom
set splitbelow
set splitright

" Always show statusline
set laststatus=2

" Always show tabline
set showtabline=2

" hide buffers instead of closing them this means that the current buffer can be put
" to background without being written; and that marks and undo history are preserved
set hidden

" Enable filetype detection
filetype on

" Load filetype-specific indent files
filetype indent on

" Enable filetype-specific plugins
filetype plugin on

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Search as you type 
set incsearch 

" Turn off swap files
set noswapfile
set nobackup
set nowb

" when in insert mode, press <F2> to go to paste mode, where you can paste mass data
" that won't be autoindented
set pastetoggle=<F2>

" Sane backspace behavior
set backspace=indent,eol,start

" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in tab when editing
set softtabstop=4

" Tabs are spaces
set expandtab

" Auto indentation
set autoindent

" Copy the previous indentation on autoindenting
set copyindent

" leader is ;
let mapleader=";"

" jj is escape
inoremap jj <esc>

" Avoid accidental hits of <F1> while aiming for <Esc>
noremap! <F1> <Esc>

" Edit and Reload .vimrc files
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

" Set .h files as c files
autocmd BufNewFile,BufReadPost *.h set filetype=c
