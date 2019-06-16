sandbox_init_rbenv(){
  eval "$(rbenv init -)"
}

sandbox_hook rbenv ruby
sandbox_hook rbenv bundler
sandbox_hook rbenv gem
