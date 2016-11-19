""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
""""""""""""""""""""""""""""""""""""""""""""
set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, requird
Plugin 'VundleVim/Vundle.vim'

" Plugins

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""
" Sets how manay lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from outside
set autoread


""""""""""""""""""""""""""""""""""""""""""""
" => Vim user interface
""""""""""""""""""""""""""""""""""""""""""""
" Show line numbers
set nu

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""
" => color and fonts
""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlight
syntax on

" colorscheme
try
    colorscheme desert
catch
endtry

" Background color
set background=dark

" Color for line numbers
highlight LineNr ctermfg=yellow term=bold

" encoding
set encoding=utf8

" use Unix as standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""
"=> Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent
""""""""""""""""""""""""""""""""""""""""""""
" Use space instead of tab
set expandtab

" Be smart when using tab
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" line break on 500 characters
set lbr
set tw=500

" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap

""""""""""""""""""""""""""""""""""""""""""""
" => The peak sea color sheme
""""""""""""""""""""""""""""""""""""""""""""
if ! has("gui_running")
    set t_Co=256
endif
set background=dark
colors peaksea
















