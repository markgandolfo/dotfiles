let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeHijackNetrw     = 0
let g:loaded_netrw            = 1 " Disable netrw
let g:loaded_netrwPlugin      = 1 " Disable netrw
let g:NERDTreeIgnore          = ['Icon$']
let g:NERDTreeWinPos          = 'right'
let g:NERDTreeMinimalUI       = 1
let g:NERDTreeDirArrows       = 1
let NERDTreeShowHidden        = 0
let g:NERDTreeWinSize        = 60

map <Leader>d :NERDTreeToggle<CR> :set number<CR>
map <C-d> :NERDTreeToggle<CR> :set number<CR>
