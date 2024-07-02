
let mapleader = " "

" ctrl-s to save
nnoremap <C-s> :w<CR>

" ctrl-p to open a file via fzf
if exists(':FZF')
  nnoremap <C-p> :FZF!<cr>
endif

" SPC-f-e-d to edit your config file
nnoremap <leader>fed :cd ~/.vim<CR>:e ~/.vim/init.vim<CR>
" SPC-f-e-k to edit your kepmap file
nnoremap <leader>fek :cd ~/.vim<CR>:e ~/.vim/after/plugin/key_bindings.vim<CR>
" SPC-f-e-o to edit your options file
nnoremap <leader>feo :cd ~/.vim<CR>:e ~/.vim/after/plugin/options.vim<CR>

" toggle relative line number 

function! ToggleLineNumber()
if v:version > 703
  set norelativenumber!
endif
set nonumber!
endfunction

map <leader>r :call ToggleLineNumber()<CR>

" toggle nerd tree
map <leader>t :NERDTreeToggle<CR>

" close nerdtree after opening file
let NERDTreeQuitOnOpen=1

" show hidden files by default
let NERDTreeShowHidden=1
