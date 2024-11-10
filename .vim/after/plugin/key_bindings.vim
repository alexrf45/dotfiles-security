let mapleader = ' '
nnoremap <leader>h :helpgrep<space>

inoremap <leader>e <esc>

"ctrl-s to save
nnoremap <C-s> :w<CR>

" ctrl-p to open a file via fzf
if exists(':FZF')
  nnoremap <leader><space> :FZF!<cr>
endif

" SPC-f-e-d to edit your config file
nnoremap <leader>fed :cd ~/.vim<CR>:e ~/.vim/init.vim<CR>
" SPC-f-e-k to edit your kepmap file
nnoremap <leader>fek :cd ~/.vim<CR>:e ~/.vim/after/plugin/key_bindings.vim<CR>
" SPC-f-e-o to edit your options file
nnoremap <leader>feo :cd ~/.vim<CR>:e ~/.vim/after/plugin/options.vim<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
