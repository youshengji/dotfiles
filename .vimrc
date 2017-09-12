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

" User plugins
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'

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

" Enable mouse
if has('mouse')
    set mouse=a
endif

" Configure backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

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

" highlight current line
set cursorline
set cursorcolumn

" encoding
set encoding=utf8
set fileencodings=utf-8,cp936,gb18030,gbk,gb2312,ucs-bom,latin-1

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
" => Plugin settings
""""""""""""""""""""""""""""""""""""""""""""
" color scheme
if ! has("gui_running")
    set t_Co=256
endif

set background=dark
colorscheme molokai

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_polulate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" NERDTree
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""
" => other styles to override that 
"    provided by plugins
"""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""
" => new file tempaltes
"""""""""""""""""""""""""""""""""""""""""""
function! LoadTemplate(extension)
    silent! :execute '0r ~/.vim/templates/' . a:extension . '.tpl'
    silent! execute 'source ~/.vim/templates/' . a:extension . '.default.vim'
endfunction
autocmd BufNewFile * call LoadTemplate('%:e')

