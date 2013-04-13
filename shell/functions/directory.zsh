# Chmod all files within a given path
function chfile {
  find . -type f -exec chmod $1 {} \;
}

# Chmod all directories within a given path
function chdir {
  find . -type d -exec chmod $1 {} \;
}
