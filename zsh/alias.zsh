alias n='nvim'
alias vim='nvim'
alias v='nvim'

alias sapt='sudo apt'

# python
alias python='python3'
alias py='python3'
alias pip='pip3'
alias pyenv='python3 -m venv .venv'
alias pyact='source .venv/bin/activate'

# git
alias gci='git commit --interactive'
alias gdo='git diff origin'
alias gl='glg $(git show-ref | cut -d " " -f 2 | grep -v stash$) HEAD'
alias glw='glp --word-diff'
alias gsw='git show --format=fuller'
alias gco='git checkout'
alias gcp='git checkout -p'
alias gs='git status --untracked-files=all'
alias gst='git stash --include-untracked --keep-index'
alias gstp='git stash pop'
alias gd='git diff -M40'
alias gdw='gd --word-diff=color --word-diff-regex="[A-z0-9_-]+"'
alias gbdw='gbd --word-diff=color --word-diff-regex="[A-z0-9_-]+"'
alias gds='gd --cached'
alias gdsw='gdw --cached'
alias gbd='_git_assert_origin_head && gd $(git merge-base origin/HEAD HEAD)..'
alias gbdd='_git_assert_origin_head && git diffall $(git merge-base origin/HEAD HEAD) HEAD'
alias gbl='_git_assert_origin_head && git-log --reverse $(git merge-base origin/HEAD HEAD)..'
alias gblp='_git_assert_origin_head && glp $(git merge-base origin/HEAD HEAD)..'
alias gblg='gblp --no-patch'
alias gar='git reset HEAD'
alias garp='git reset -p HEAD'
alias ga='git add'
alias gap='git add -p'
alias gld="git fsck --lost-found | grep '^dangling commit' | cut -d ' ' -f 3- | xargs git show -s --format='%ct %H' | sort -nr | cut -d ' ' -f 2 | xargs git show --stat"
alias gc='git commit -v'
alias gca='gc --amend'
alias grc='git rebase --continue'
alias gp='git push'
alias gpt='git push -u origin $(git_current_branch)'
alias gws='git wip save WIP --untracked'
alias gwd='git update-ref -d refs/wip/$(git_current_branch)'
alias gac='git add .; git commit -a'

## some node stuff
alias nrd="npm run dev"
alias nrt="npm run test"

## some ruby stuff
alias rs="rails server"
alias rc="rails console"
alias rdbm="rails db:migrate"
alias berc="bundle exec rubocop"
alias rsof="rspec --only-failures"
