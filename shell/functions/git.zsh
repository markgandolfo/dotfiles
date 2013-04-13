function gbt() {
  git branch --track $1 remotes/origin/$1
  git checkout $1
}
