set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plugin 'tmhedberg/SimpylFold.git'

Plugin 'vim-scripts/indentpython.vim'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'jnurmine/Zenburn'

Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"call plug#begin()
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"call plug#end()

set background=dark
colorscheme koehler
syntax on
set nu
set encoding=utf-8
set fileformat=unix

let g:SimpylFold_docstring_preview=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"set editing-mode vi

set splitbelow
set splitright

"split navigations
"Key combos:

"Ctrl-j move to the split below
nnoremap <C-J> <C-W><C-J>
"Ctrl-k move to the split above
nnoremap <C-K> <C-W><C-K>
"Ctrl-l move to the split to the right
nnoremap <C-L> <C-W><C-L>
"Ctrl-h move to the split to the left
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

autocmd vimenter * NERDTree

au BufNewFile,BufRead *.py,*.pl,*pm
    	\ set tabstop=4 |
    	\ set shiftwidth=4 |
    	\ set textwidth=79 |
    	\ set expandtab |
    	\ set autoindent

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.c,*.h
	\ set nocompatible |
	\ set autoindent |
	\ set smartindent |
	\ set tabstop=8 | 
	\ set shiftwidth=8 |
	\ set expandtab |
	\ set cc=80 |
	\ set number |
	\ set showmatch |
	\ set formatoptions-=c formatoptions-=o formatoptions-=r |
	\ set comments=sl:/*,mb:\ *,elx:\ */

au BufNewFile,BufRead Makefile*, makefile*
	\ set nocompatible |
	\ set autoindent |
	\ set smartindent |
	\ set tabstop=8 |
	\ set shiftwidth=8 |
	\ set cc=80 |
	\ set noexpandtab |
	\ syntax on |
	\ set number |
	\ set showmatch

au BufNewFile,BufRead *.js, *.html, *.css
    	\ set tabstop=2 |
    	\ set softtabstop=2 |
    	\ set shiftwidth=2
 
