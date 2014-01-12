" A group of clojure related plugins
" https://github.com/tpope/vim-fireplace
Bundle 'tpope/vim-fireplace' 
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'amdt/vim-niji'


function! _OpenClouse()
  " Make sure syntax is on and filetype plugin indent is on
  " For clojure static
  syntax on
  filetype plugin indent on
  let g:clojure_maxlines = 100
  let g:clojure_align_multiline_strings = 1

  inoremap ( ()<Esc>i
  inoremap { {}<Esc>i
  inoremap [ []<Esc>i
endfunction

autocmd BufNewFile,BufRead *.clj call _OpenClouser()
