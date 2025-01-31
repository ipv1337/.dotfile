#!/usr/bin/env bash

if [[ "-d" == ${SESSION_CMD} ]]
then
	tmux -2 new-session -d -s ${SESSION} -n 'nuc'
	tmux send-keys -t ${SESSION}:1 'unset TMUX' C-m
	#tmux send-keys -t ${SESSION}:1 'mosh vm1.nocentre.net' C-m
	tmux send-keys -t ${SESSION}:1 'bpytop' C-m

	tmux new-window -t ${SESSION}:2 -n 'ansible'
	tmux send-keys -t ${SESSION}:2 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:2 'wtmux local-ipv1337-callfire-ansible'
	#[ "-x" -eq ${SESSION_CMD} ] tmux send-keys -t ${SESSION}:2 'wtmux local-ipv1337-callfire-ansible' C-m

	tmux new-window -t ${SESSION}:3 -n 'terraform'
	tmux send-keys -t ${SESSION}:3 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:3 'wtmux local-ipv1337-callfire-terraform'
	#tmux send-keys -t ${SESSION}:3 'mosh xps15.nocentre.net' C-m

	tmux new-window -t ${SESSION}:4 -n 'packer'
	tmux send-keys -t ${SESSION}:4 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:4 'wtmux local-ipv1337-callfire-packer'
	#tmux send-keys -t ${SESSION}:4 'mosh xps13.nocentre.net' C-m

	tmux new-window -t ${SESSION}:5 -n 'vault'
	tmux send-keys -t ${SESSION}:5 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:5 'wtmux local-ipv1337-callfire-vault-policies'
	#tmux send-keys -t ${SESSION}:5 'mosh xps13.nocentre.net' C-m

	tmux new-window -t ${SESSION}:6 -n 'ci'
	tmux send-keys -t ${SESSION}:6 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:6 'wtmux local-ipv1337-callfire-'
	#tmux send-keys -t ${SESSION}:6 'mosh xps13.nocentre.net' C-m

	tmux new-window -t ${SESSION}:7 -n 'vscode'
	tmux send-keys -t ${SESSION}:7 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:7 'wtmux local-vscode'
	#tmux send-keys -t ${SESSION}:7 'mosh xps13.nocentre.net' C-m

	tmux new-window -t ${SESSION}:8 -n 'ops'
	tmux send-keys -t ${SESSION}:8 'unset TMUX' C-m
	tmux send-keys -t ${SESSION}:8 'wtmux'
	#tmux send-keys -t ${SESSION}:8 'mosh xps13.nocentre.net' C-m
elif [[ "-v" == ${SESSION_CMD} ]]
then
	tmux -2 new-session -d -s ${SESSION} -n 'nuc'
	tmux send-keys 'unset TMUX' C-m
	tmux send-keys 'mosh vm1.nocentre.net' C-m

	#tmux split-window -t ${SESSION}:1
	#tmux send-keys 'unset TMUX' C-m
	#tmux send-keys 'mosh vm2.nocentre.net' C-m

	#tmux split-window -t ${SESSION}:1
	#tmux send-keys 'unset TMUX' C-m
	#tmux send-keys 'mosh xps15.nocentre.net' C-m

	#tmux split-window -t ${SESSION}:1
	#tmux send-keys 'unset TMUX' C-m
	#tmux send-keys 'mosh xps13.nocentre.net' C-m

	tmux select-layout -t ${SESSION}:1 even-vertical
	tmux set-window-option -t ${SESSION}:1 synchronize-panes on >/dev/null
else
	exit 1
fi

tmux select-window -t ${SESSION}:1

tmux -2 attach-session -d -t ${SESSION}

