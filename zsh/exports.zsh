export EDITOR="nvim"

# Check if the NVM directory exists before setting NVM_DIR
[ -d "$HOME/.nvm" ] && export NVM_DIR="$HOME/.nvm"

# Only try to load NVM if NVM_DIR is set
if [ -n "$NVM_DIR" ]; then
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi
