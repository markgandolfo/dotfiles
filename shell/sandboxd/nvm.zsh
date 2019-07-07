sandbox_init_nvm(){
  source $(brew --prefix nvm)/nvm.sh #long running setup command
}

# create hooks for commands 'nvm', 'node' and 'nodemon'
sandbox_hook nvm node
sandbox_hook nvm nodemon
sandbox_hook nvm npm
sandbox_hook nvm yarn

