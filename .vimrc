" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set noerrorbells
set t_vb=
map Q <Nop> 			"Disable stupid Ex message

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable to see the docstrings for folded code:
let g:SimpylFold_docstring_preview=1
" Use system clipboard
set clipboard=unnamed

set encoding=utf-8
let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" NERDTree extention
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:airline_powerline_fonts = 1
set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
call plug#end()
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Color scheme
colorscheme darkblue
set background=dark
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey
" Remap switch window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding
set foldmethod=indent
set foldlevel=99
" Remap folder to spacebar
nnoremap <space> za

" Python Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" Indentation for js, html, css, ts
au BufNewFile,BufRead *.js,*.html,*.css,*.ts
    \ set tabstop=2 softtabstop=2 shiftwidth=2 


au BufNewFile,BufRead *.txt,*.todo
    \ set tabstop=2 shiftwidth=2 softtabstop=2 shiftwidth=2 fileformat=unix 


" remappings
" auto start nerdtree iri
au vimenter * if !argc() | NERDTree " | endifi

" nerdtree options
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

" add toggle
nnoremap <silent> f :NERDTreeToggle<CR>
" close file with q in normal mode
nmap <silent> q :q<cr>
" force close file with controll + q in normal mode
nmap <silent> <C-Q> :q!<cr>
" save and close file with x in normal mode
nmap <silent> x :x<cr>
" write file with w in normal mode
nmap <silent> w :w<cr>
" copy line with control + c in normal mode
nmap <silent> <C-C> :y<enter>
" paste line with control + v in normal mode
nmap <silent> <C-V> p

nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" move line up with shift + arrorw -up in normal, visual and insert mode

nnoremap <S-Up> :m-2<CR>
inoremap <S-Up> <Esc>:m-2<CR>
vnoremap <S-Up> :m-2<CR>
" move line down with shift + arrow-down in normal, visual and insert mode
nnoremap <S-Down> :m+<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Down> :m+<CR>



map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>



let NERDTreeAutoDeleteBuffer = 1


