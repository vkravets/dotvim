let idea_terminal=$IDEA_TERMINAL

set nocompatible              " be iMproved, required
set number
filetype off                  " required

" auto-install vim-plug                                                                                                                
if empty(glob('~/.vim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                           
  autocmd VimEnter * PlugInstall                                                                                                      
endif

call plug#begin('~/.vim/bundle')

Plug 'Bling/vim-airline'
" Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
" Plug 'chase/vim-ansible-yaml'
Plug 'tpope/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'troydm/asyncfinder.vim'
Plug 'takahirojin/gbr.vim'
Plug 'w0ng/vim-hybrid'
" Plug 'wakatime/vim-wakatime'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"

set laststatus=2
let mapleader=','
let g:airline_powerline_fonts = 1
" Show Tabline
let g:airline#extensions#tabline#enabled = 1

" Show Buffers
let g:airline#extensions#tabline#show_buffers = 1

" Otherwise key-mapping doesn't work
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Don't display 'BUFFERS', etc on the top right
let g:airline#extensions#tabline#show_tab_type = 0

" Don't show buffer numbers
let g:airline#extensions#tabline#buffer_nr_show = 0
filetype on
syntax on

set encoding=utf-8
set t_Co=256
set t_kB=[Z
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let mapleader = ','

" for vim 8
if (has("termguicolors"))
  " set termguicolors
endif

set background=dark
let g:hybrid_use_Xresources = 1
colorscheme hybrid
set noshowmode

let g:gbr_current_branch_top = 1
let g:gbr_window_height = 20

map <C-n> :NERDTreeToggle<CR>
map <C-a> :AsyncFinderBottom<CR>
map <C-b> :Gbr<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
