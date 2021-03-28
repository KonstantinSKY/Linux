"NEOVIM config
" Plugins list
call plug#begin('~/.config/nvim/plugged')
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug '907th/vim-auto-save'
Plug 'Yggdroot/indentLine'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()
                

"SETS
set nu                                  "line numbers
set encoding=UTF-8
" Enable folding
set foldmethod=indent                   "":help fold-command    
set foldlevel=99
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set hlsearch incsearch
set cursorline 				"Horizontal cursor line
"set cursorcolumn			"Vertical cursor line
" Color settings
colorscheme gruvbox
set background=dark
set updatetime=100			"GitGutter Delay
set autoindent				
"set list lcs=tab:\|\			"for Yggdroot/indentLine

au BufNewFile,BufRead *.py              "for Python
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set smarttab

" LETS
" For airlines
let g:airline_powerline_fonts = 1 			"Powerline fonfs ON
let g:airline#extensions#keymap#enabled = 0 		"Dont show curent mapping
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 	"Cursor position
let g:Powerline_symbols ='unicode' 			"unicode 
let g:airline#extensions#xkblayout#enabled = 0 
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Python
let python_highlight_all = 1
syntax on
" Auto-Save
let g:auto_save = 1 
let g:auto_save_silent = 1		"1: Don't show autosave notification
let g:auto_save_events = ["InsertLeave"] "When to save event
let g:indentLine_enabled = 1
"MAPS
map <C-x> :!chmod u+x %<CR>                                                                    
map <F2> :IndentLinesToggle<CR>   
map <F3> :NERDTreeToggle<CR> 
"  Enable folding with the spacebar
nnoremap <space> za			" Enable folding with the spacebar


" Templates
au bufnewfile *.sh 0r ~/.templates/sh_header.templ
