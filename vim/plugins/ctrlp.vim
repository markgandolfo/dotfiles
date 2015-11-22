set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" cmd + shift + p clears the ctrlp cache
nnoremap <silent> <C-A> :ClearCtrlPCache<cr>

let g:ctrlp_use_caching = 0
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
  \ }
endif
