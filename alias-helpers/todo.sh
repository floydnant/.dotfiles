todo_file=~/todo-file.md

if [[ "$1" == "edit" || "$1" == "e" ]]
	then nvim $todo_file
	else echo "$@" >> $todo_file
fi

