# Mongo DB
alias mongodbstart='mongod --dbpath /data/db/'

# Postgres
alias pgstart='pg_ctl -D ~/Sites/postgres -l ~/Sites/postgres/logs/server.log start'
alias pgstop='pg_ctl -D ~/Sites/postgres stop'

# Mysql
alias mysqlstart='/usr/local/bin/mysqld start'
alias mysqlstop='/usr/local/bin/mysqld stop'