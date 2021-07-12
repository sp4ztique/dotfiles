" Install vim-plug if it isn't already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-sensible'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'justinmk/vim-sneak'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme dracula
set termguicolors

" Enable wrapping
set wrap

" Setup tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set noshiftround

set matchpairs+=<:>

set number

set hlsearch
set incsearch
set ignorecase
set smartcase

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
