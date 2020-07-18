# Sandbox npm at the same time since i mainly work in rails
# and rails requires node to run these days
sandbox_init_rbenv(){
  eval "$(rbenv init -)"
  source $(brew --prefix nvm)/nvm.sh #long running setup command
}

sandbox_hook rbenv ruby
sandbox_hook rbenv bundle
sandbox_hook rbenv bundler
sandbox_hook rbenv gem
sandbox_hook rbenv rspec
sandbox_hook rbenv rails
sandbox_hook rbenv rake
