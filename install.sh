#!/bin/bash
set -e

update=false

for opt in $@; do
	case "${opt}" in
		"--clean")
			echo "Performing a clean installation."
			rm -rdf ~/.vim ~/.vimrc
			;;
		"--update")
			echo "Updating packages."
			update=true
			;;
		*)
			echo "Unrecognized argument: \"${opt}\""
			exit 1
			;;
	esac
done

cp vimrc ~/.vimrc
cp -rT vim ~/.vim

if [ "${update}" = true ]; then
	vim -c ":PlugUpdate | :qa"
fi

