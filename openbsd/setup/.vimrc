set fileformat=unix

function Ccode()
	set nocompatible
	set autoindent
	set smartindent
	set tabstop=8
	set shiftwidth=8
	set expandtab
	set cc=80
	set number
	set showmatch
	set formatoptions-=c formatoptions-=o formatoptions-=r
	set comments=sl:/*,mb:\ *,elx:\ */
endfunction

function Makecode()
	colorscheme koehler
	set nocompatible
	set autoindent
	set smartindent
	set tabstop=8
	set shiftwidth=8
	set cc=80
	set noexpandtab
	syntax on
	set number
	set showmatch
endfunction

function Pcode()
	colorscheme koehler
	set tabstop=8
	set shiftwidth=4
	set expandtab
	highlight BadWhitespace ctermbg=red guibg=red
	match BadWhitespace /^\t\+/
	match BadWhitespace /\s\+$/
	set textwidth=79
	set cc=80
endfunction

set background=dark
colorscheme koehler
syntax on
set nu
autocmd BufRead,BufNewFile,BufEnter *.h,*.c call Ccode() 

autocmd BufRead,BufNewFile,BufEnter Makefile*,makefile* call Makecode()
autocmd BufRead,BufNewFile,BufEnter *.py,*.pyw call Pcode()
autocmd BufRead,BufNewFile,BufEnter *.pl,*.pm call Pcode()

 
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
