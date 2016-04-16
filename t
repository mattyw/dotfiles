#!/bin/sh
$@ && tmux display-message "done" && notify-send -t 5 "done"
