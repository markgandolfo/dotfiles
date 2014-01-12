" https://github.com/tpope/vim-fireplace
syntax on
filetype plugin on
filetype indent on
let g:clojure_maxlines = 100
let g:clojure_align_multiline_strings = 1

function BindToClojureFile()
  " Make sure syntax is on and filetype plugin indent is on
  " For clojure static

  inoremap ( ()<Esc>i
  inoremap { {}<Esc>i
  inoremap [ []<Esc>i
endfunction

autocmd BufNewFile,BufRead *.clj call BindToClojureFile()
