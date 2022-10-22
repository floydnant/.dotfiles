if [[ -z "$1" ]]
	then
		echo 'opening ./ with VS Code...'
		code .
	else
		echo "opening $1 with VS Code..."
		code $1 $2  
fi
