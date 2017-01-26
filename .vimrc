set nocompatible           "required
filetype off		   "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle,   required
Plugin 'gmark/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline',{'rtp': 'powerline/bindings/vim'}


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()		"required
filetype plugin indent on	"required


set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za

let g:SimplyFold_docstring_preview=1


"au BufNewFile,BufRead *.py  
"	\ set tabstop=4
"	\ set shiftwidth=4
"	\ set textwidth=79
"	\ set expandtab
"	\ set autoindent
"	\ set fileformat=unix

"au BufRead,BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/
"	\ set encoding=utf-8
"

let mapleader = '<space>'

Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g   :YcmCompleter GotoDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

call togglebg#map("<F5>")

let NERDTreeIgnore=['\.puc$','\-$'] "ignore files in NERDTree

set nu

set clipboard=unnamed

"Start NERDTree when vim starts
autocmd vimenter * NERDTree
