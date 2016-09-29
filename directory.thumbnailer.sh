#!/usr/bin/env bash

# PCManFM Covers
# https://github.com/gcavallo/pcmanfm-covers

# Copyright (c) 2016, Gabriel Cavallo
# GPLv2 License https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt

while [[ $# -gt 1 ]]; do
	key="$1"
	case $key in
		-i|--input)
			input="$2"
			shift
			;;
		-o|--output)
			output="$2"
			shift
			;;
		-s|--size)
			size="$2"
			shift
			;;
		*)
			shift
			;;
	esac
done

cover=$(cat "$input/.directory" | grep Icon= | cut -d'=' -f2-)

if [[ -f "$output" ]]; then
	exit 0;
elif [[ -f "$input/$cover" ]]; then
	convert "$input/$cover" -thumbnail $size $output;
	exit 0;
elif [[ -f "$input/Folder.jpg" ]]; then
	convert "$input/Folder.jpg" -thumbnail $size $output;
	exit 0;
fi

exit 1;
