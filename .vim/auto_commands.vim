" AUTO COMMANDS

" Ruby files
autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber set ai sw=2 sts=2 et
if has("gui_running")
  autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber :SyntasticEnable
endif

" Set color column for features
autocmd BufWinEnter *.feature set cc+=11
autocmd BufWinLeave *.feature set cc-=11

" Markdown files
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown

" Add dashes to the list of 'word characters' for CSS/SCSS files:
autocmd Filetype css,scss setlocal iskeyword+=-

" Save on FocusLost
au FocusLost * :silent! wall
