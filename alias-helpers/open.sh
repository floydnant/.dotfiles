if [[ -z "$1" ]]
	then
		echo 'opening ./ with Finder...'
		open .
	else
		echo "opening $1 with Finder..."
		open $@
fi
