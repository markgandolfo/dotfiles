let run_bundle_install = 0

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/"))
  silent !echo "Installing Vundle..."
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
  let run_bundle_install = 1
endif

set nocompatible
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
