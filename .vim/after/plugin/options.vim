" Enable 256-color by default in the terminal
if !has('gui_running') | set t_Co=256 | endif

" Hide line numbers by default
set number
set encoding=UTF-8

" Wildignore
set wig+=vendor,log,logs

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

let g:airline_theme='base16_gruvbox_dark_hard'

" autocmd VimEnter * NERDTree | wincmd p
