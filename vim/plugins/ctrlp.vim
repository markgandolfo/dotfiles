set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" cmd + shift + p clears the ctrlp cache
nnoremap <silent> <C-A> :ClearCtrlPCache<cr>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  nnoremap <Leader>gw :silent! grep! "\b<C-r><C-w>\b"<CR>:cwindow<CR>:redraw!<CR>
  command! -nargs=+ -complete=file_in_path -bar Ag silent grep! <args>|cwindow|redraw!

  " CtrlP
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ackprg = 'ag --nogroup --nocolor --column'
  endif

