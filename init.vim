call plug#begin('~/.local/share/nvim/plugged')

Plug 'zchee/nvim-go', { 'do': 'make'}
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim', { 'as': 'dracula'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'dkprice/vim-easygrep'
Plug 'godlygeek/tabular'
Plug 'zhou13/vim-easyescape'

call plug#end()

" Common
set rnu
filetype plugin on

" Tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4

" Theme
syntax on
color dracula
let g:airline_powerline_fonts = 1

" Shortcuts remap
nmap  <C-b>         :NERDTreeToggle<CR>
nmap  <C-t>         :tabnew<CR>
nmap  <C-PageUp>    :tabprevious<CR>
nmap  <C-PageDown>  :tabnext<CR>

nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" Escape
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 50
cnoremap jk <ESC>
cnoremap kj <ESC>

" Mouse and tmux
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
