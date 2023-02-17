#!/bin/bash

nb_grumbles=$(ls -A ~/grumblecc/grumbles/ | wc -l)
file=$1

gcc 2>~/grumblecc/log/msg.txt $file

if grep -q [[:alnum:]] ~/grumblecc/log/msg.txt
then
	nb=$((1 + $RANDOM % $nb_grumbles))
	mpv --fs --no-terminal ~/grumblecc/grumbles/grumble$nb.mp4
	cat ~/grumblecc/log/msg.txt
fi

:>~/grumblecc/log/msg.txt
