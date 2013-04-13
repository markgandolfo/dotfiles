# Toggle hidden file visibility
function show_hidden {
	if [[ "$1" = "true" ]]; then
		defaults write com.apple.finder AppleShowAllFiles TRUE
		killall Finder
	else
		defaults write com.apple.finder AppleShowAllFiles FALSE
		killall Finder
	fi
}

# Generate a temporary PDF file from a man page for easy reading
pdfman () {
   man -t $1 | open -a /Applications/Preview.app -f
}
