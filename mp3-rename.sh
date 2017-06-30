#!/bin/bash

if [ $# -ne 1 ]; then 
	echo 'Usage: ./$0 "sound with any name.mp3"';
	echo "Exiting...";
	exit 1;
fi

if [ ${1: -4} != ".mp3" ]; then
	echo "$1 is not an mp3 file";
	echo "Exiting...";
	exit 1;
fi

artist=`mp3info -p %a "$1"`
title=`mp3info -p %t "$1"`
newname="$artist - $title.mp3"

mv "$1" "$newname"
echo "Successfully renamed to: $newname"