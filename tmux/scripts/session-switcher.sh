#!/bin/bash

# Get the list of tmux sessions
sessions=$(tmux list-sessions -F '#{session_name}: #{session_windows} windows#{?session_attached, (attached),}')

# Display sessions in fzf and get selection
selected=$(echo "$sessions" | fzf-tmux -p --reverse --border-label="jump to session" --color=label:italic:bold)

# Extract session name and switch to it if something was selected
if [[ -n "$selected" ]]; then
  session_name=$(echo "$selected" | cut -d':' -f1)
  tmux switch-client -t "$session_name"
fi
