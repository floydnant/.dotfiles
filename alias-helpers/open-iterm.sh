if [[ -z "$1" ]]
	then
		echo 'opening ./ with iTerm...'
		open . -a iterm.app
	else
		echo "opening $1 with iTerm..."
		open $1 -a iterm.app
fi
