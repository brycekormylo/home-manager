#!/bin/bash

SESH="home-cfg"

tmux has-session -t $SESH 2>/dev/null

if [ $? != 0 ]; then
	tmux new-session -d -s $SESH -n "editor"

	tmux send-keys -t $SESH:editor "cd ~/.config/home-manager/" C-m
	tmux send-keys -t $SESH:editor "vi ." C-m

	tmux new-window -t $SESH -n "terminal"
	tmux send-keys -t $SESH:terminal "cd ~/.config/home-manager" C-m

	tmux select-window -t 1
fi

tmux attach-session -t $SESH
