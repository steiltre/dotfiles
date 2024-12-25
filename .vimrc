filetype plugin on

" Turn on line numbers
set number

" Turn of text-wrapping (soft)
set nowrap

" Set width for hard-wrapping
set textwidth=120

" Allow backspaces and deletes to remove \n
set backspace=indent,eol,start

" Turn tabs into spaces
"set expandtab

" Set size of tab for manual indenting
set tabstop=4

" Set size of tab for automatic indenting
set shiftwidth=4

" Highlight trailing whitespace
"set list listchars=tab:\ \ ,trail:·

" Set the status line to always be displayed
set laststatus=2

" Set output in statusline
set statusline=
set statusline+=%f                                      " filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'},       " file encoding
set statusline+=\ %{&ff}]                               " file format
set statusline+=\ %h%m%r                                " help, modified, and read-only flags
set statusline+=%=                                      " right align
set statusline+=C:%c,                                   " cursor column
set statusline+=\ L:%l/%L\ (%p%%)                       " cursor line / total lines (percentage)

" UTF encoding
set encoding=utf-8

" Autoload files that have been changed outside of Vim
set autoread

" Use system clipboard
set clipboard+=unnamed

" Create splits to the right and below
set splitbelow
set splitright

" Highlight line cursor is on
set cursorline

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Remove timeout on mappings
set notimeout
set ttimeout

" Add menu for command-line completion
set wildmenu
set wildmode=longest:full,full

"set t_Co=256
" Set colors in Vim
syntax enable
set background=dark
colorscheme Tomorrow-Night

" Turn on auto-indentation
filetype indent on

" Turn on syntax highlighting
syntax on

" Turn off vi compatibility mode
set nocompatible

" No backup files
set nobackup

" No swap file
set noswapfile

" Search as you type
set incsearch

" Highlight search matches
set hlsearch

" A buffer is marked as 'hidden' if it has unsaved changes, and it is not
" currently loaded in a window. If you try and quit Vim while there are hidden
" buffers, you will raise an error:
" E162: No write since last change for buffer "a.txt"
set hidden

" Correctly identify .tex documents
let g:tex_flavor = 'latex'

""" Keybindings
" Find next placeholder
imap <C-j> <ESC>/<++><CR>cf>
nmap <C-j> <ESC>/<++><CR>cf>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

" Add any changes that are only for this machine in .vimrc.local
if filereadable($HOME . "/.vimrc.local")
	source $HOME/.vimrc.local
endif

