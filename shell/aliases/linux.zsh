# I love colour
if ls --version 2> /dev/null | grep -q 'GNU coreutils'
then
  export GREP_OPTIONS='--color=auto'
  alias ls="ls -G --classify --block-size=\'1"
fi

alias nohistory="export HISTORY=/dev/null"