set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set hlsearch incsearch
set encoding=UTF-8

"Auto indent
set autoindent
syntax on

"Python
"Delete too spaces at the file ends before saving (in .py files only)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"Set smart indents after keywords (in .py files only)
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

call plug#begin('~/.vim/plugged')
"On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
"Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

"Initialize plugin system
call plug#end()

"Color set
colorscheme gruvbox
set background=dark
"GitGutter Delay
set updatetime=100
"Air-lines set
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"Events for create files
au bufnewfile *.sh 0r ~/.templates/sh_header.templ
"Mapping
map <C-n> :NERDTreeToggle<CR>
map <C-l> :noh<CR>
