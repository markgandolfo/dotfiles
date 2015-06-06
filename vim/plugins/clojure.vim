function SetClojureOptions()
  set filetype=clojure
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

  inoremap ( ()<Esc>i
  inoremap { {}<Esc>i
  inoremap [ []<Esc>i
endfunction

autocmd BufRead *.clj call SetClojureOptions()
