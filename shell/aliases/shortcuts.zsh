# Mongo DB
alias mongodbstart='mongod --dbpath /data/db/'

# Postgres
alias pgstart='pg_ctl -D ~/Programming/@postgres94 -l ~/Programming/@postgres94/logs/server.log start &'
alias pgstop='pg_ctl -D ~/Programming/@postgres94 stop'

# Mysql
alias mysqlstart='/usr/local/bin/mysqld start'
alias mysqlstop='/usr/local/bin/mysqld stop'

# Neovim
alias n='nvim'

# Vim
alias v='vim'

# Start static server
alias startserver='python -m SimpleHTTPServer'

# Helpers
alias ppjson="ruby -r json -e 'jj JSON.parse gets'"
