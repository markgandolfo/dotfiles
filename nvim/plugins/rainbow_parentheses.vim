Plug 'junegunn/rainbow_parentheses.vim'

augroup rainbow_lisp
  autocmd!
  autocmd FileType clojure,eelixir RainbowParentheses
augroup END

let g:rainbow#pairs = [['(', ')'], ['[', ']']]
