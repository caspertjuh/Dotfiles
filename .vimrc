set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Package manager KKona
Plugin 'VundleVim/Vundle.vim'

"automatic syntax checking plugin
Plugin 'scrooloose/syntastic'

" Python import sorter
Plugin 'fisadev/vim-isort'

" idk pajlada
Plugin 'neomake/neomake'

" Fuzzy file finder (like Ctrl+K in other apps)
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'editorconfig/editorconfig-vim'

" Allow plugins to define their own operator
Plugin 'kana/vim-operator-user'

" Completes ( with )
Plugin 'jiangmiao/auto-pairs'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

syntax on

" Ignore various cache/vendor folders
set wildignore+=*/node_modules/*,*/dist/*,*/__pycache__/*

" Ignore C/C++ Object files
set wildignore+=*.o

" Ignore generated C/C++ Qt files
set wildignore+=moc_*.cpp,moc_*.h

" Ignore generated C/C++ Qt files
set wildignore+=moc_*.cpp,moc_*.h
" set wildignore+=*/lib/*

" Ignore Unity asset meta-files
set wildignore+=*/Assets/*.meta

" Disable swap file. Some people say to keep swap file enabled but in a
" temporary folder instead. I dislike the dialog that pops up every now and
" then if a swapfile is left so I just leave it fully disabled
set noswapfile

" Enable line numbers
set number

" Don't wrap lines
set nowrap

" Let backspace delete indentations, newlines, and don't make it stop after
" reaching the start of your insert mode
set backspace=indent,eol,start

" Other options that I just copied and haven't tried understanding yet
set incsearch
set showmode
set nocompatible
filetype on
set wildmenu
set ruler
set lz
set hid
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set ai
set si
set cin
set mouse=a
set cursorline
set numberwidth=6
set encoding=utf-8

" Enable relative line numbering
set rnu

" Customize our status line
set statusline=%f%m%r%h%w\ 
set statusline+=[%{&ff}]
set statusline+=%=
set statusline+=[\%03.3b/\%02.2B]\ [POS=%04v]

set laststatus=2

if &t_Co == 256
    " If we're on a 256-color terminal, use pixelmuerto color scheme
    colorscheme pixelmuerto
else
    " Else fall back to ron
    colorscheme ron
endif

" Make a slight customization with the cursorline to the ron theme
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=$HOME/.vimundo
set undolevels=1000
set undoreload=10000

" Use ; as :
" Very convenient as you don't have to press shift to run commands
nnoremap ; :

" Unbind Q (it used to take you into Ex mode)
nnoremap Q <nop>

" remap h to insert and use ijkl for inverse T cursor movement
map i <Up>
map j <Left>
map k <Down>
noremap h i



let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" YouCompleteMe
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
