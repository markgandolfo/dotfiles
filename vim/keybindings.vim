map <Leader>sd :FixWhitespace<CR>:wall<CR>
map <Leader>r :checktime<CR>:wall<CR>

" Buffer navigation
map <Leader>, <C-^>
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>
map <Leader>bd :bd<CR>

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

noremap <leader>i :set list!<CR>
nmap <leader>sss :source $HOME/.vimrc<CR>
nmap <leader>vvv :tabe $HOME/.vimrc

" Window Navigation
" Use ctrl+(h|j|k|j) to move through open windows.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Copy and past to the system buffer
" <leader>p & <leader>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Clear search
map <silent><Leader>/ :nohls<CR>

" Ack with <leader>f
map <Leader>f :Ack!<Space>

" Highlight word at cursor without changing position
nnoremap <leader>h *<C-O>
" Highlight word at cursor and then Ack it.
nnoremap <leader>H *<C-O>:AckFromSearch!<CR>
map <leader>nh :nohlsearch<CR>

map <Leader>F :AckFromSearch<CR>

" Yank from the cursor to the end of the line, to be consistent with C and D
nnoremap Y y$

" I never intentionally lookup keywords (with `man`)
nmap K <Esc>

" I don't like <c-r>
map U :redo<CR>

" Marked (markdown preview)
command! Marked silent !open -a "Marked.app" "%:p"
nmap <C-p> :Marked<CR>

" Jump to start and end of line using the home row keys
noremap H ^
noremap L $

" Search for selected text, forwards or backwards.
" http://vim.wikia.com/wiki/Search_for_visually_selected_text
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
