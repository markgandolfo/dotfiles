sandbox_init_rbenv(){
  eval "$(rbenv init -)"
}

sandbox_hook rbenv ruby
sandbox_hook rbenv bundle
sandbox_hook rbenv bundler
sandbox_hook rbenv gem
sandbox_hook rbenv rspec
sandbox_hook rbenv rails
sandbox_hook rbenv rake
