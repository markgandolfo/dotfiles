if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
  PATH=~/.rbenv/shims:~/.rbenv/completions/rbenv.zsh:~/bin/:$PATH
fi
