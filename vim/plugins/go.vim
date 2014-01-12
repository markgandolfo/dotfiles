Bundle 'jnwhiteh/vim-golang'

function! _OpenGo()
  autocmd FileType go autocmd BufWritePre <buffer> Fmt
  autocmd FileType go compiler go
  syntax on
  filetype plugin on
  filetype indent on
endfunction

autocmd BufNewFile,BufRead *.go call _OpenGo()
