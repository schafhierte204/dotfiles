if tty | fgrep tty ; then
setsid -c startx -- -nolisten tcp
fi
