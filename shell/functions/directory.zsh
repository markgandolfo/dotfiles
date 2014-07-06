# Chmod all files within a given path
function chfile {
  find . -type f -exec chmod $1 {} \;
}

# Chmod all directories within a given path
function chdir {
  find . -type d -exec chmod $1 {} \;
}

# Copy files with progress bars
function lcp() {
  if [ $# -lt 2 ]
    then
      echo "Usages: lcp source destination"
    else
      rsync --progress -vaz $1 $2
  fi
}

# Use perls real path to get the real path
function realpath()
{
  perl - "$@" <<PERL
    use Cwd 'abs_path';

    if (-e \$ARGV[0]) {
      print abs_path(\$ARGV[0]) . "\n";
    } else {
      exit 1;
    }
PERL
}