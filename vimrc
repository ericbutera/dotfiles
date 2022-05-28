" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ 
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin("~/.vim/plugged")
  " Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  Plug 'romainl/Apprentice'
  " Plugin 'romainl/flattened' 
  " Plugin 'baskerville/bubblegum'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
map <leader>n :NERDTreeToggle<CR>

" fuzzy file find
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" various plugins
" Plugin 'mileszs/ack.vim'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plugin 'junegunn/fzf.vim'
" Plugin 'tpope/vim-sensible'
" Plugin 'jeetsukumaran/vim-buffergator'
" Plugin 'mbbill/undotree'
" Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'farmergreg/vim-lastplace'
" Plugin 'ervandew/supertab'
" Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

filetype plugin indent on
filetype on

set nowrap
set nu
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


autocmd FileType yaml,json set ai sw=2 ts=2 sta et fo=croql
" autocmd FileType js,html set ai sw=4 ts=4 sta et fo=croql 

" put swap, backup and undo files in a special location
" https://stackoverflow.com/a/15317146/261272
" set backupdir=~/.vim/backup//
" set directory=~/.vim/swap//
" set undodir=~/.vim/undo//

set pastetoggle=<Ins>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" let g:NERDTreeChDirMode = 2
" map <leader>n :NERDTreeToggle<CR>
" let NERDTreeIgnore = ['node_modules']

" map <leader>b :BuffergatorToggle<CR>
" map <F7> :BuffergatorToggle<CR>

" autocmd FileType js,php,py,rb,json,html,yml,phtml autocmd BufWritePre <buffer> :%s/\s\+$//e

" fzf
" nmap ; :Buffers<CR>
" nmap <Leader>t :Files<CR>
" nmap <Leader>r :Tags<CR>

" search
" set incsearch
" set hlsearch
" set ignorecase " https://stackoverflow.com/a/2287449/261272
" set smartcase 
" nnoremap <silent> <leader>l :nohl<CR><C-l>

set novisualbell
set noerrorbells 
" set t_vb=
" autocmd! GUIEnter * set vb t_vb=

" horizontal/vertical line highlight
" set cursorcolumn
" set cursorline

" set breakindent
" set breakindentopt=sbr
" set showbreak=↪>\

" theme
syntax enable
" colorscheme dracula
colorscheme apprentice