set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
 
set undolevels=1000
set backspace=indent,eol,start
colorscheme default

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-sensible'
Plug 'rstacruz/vim-opinion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-sleuth'
Plug 'prabirshrestha/vim-lsp'


call plug#end()
