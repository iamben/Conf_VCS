#
alias   ls='/bin/ls -G'
alias   g='/usr/bin/grep --color=always'
export LESS="-Rf"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LSCOLORS="Exfxcxdxbxegedabagacad"
export PYTHONSTARTUP="$HOME/.pythonstartup"

# agent forwarding, for screen and tmux
HOST=$HOST $HOME/bin/ssh-auth-sock
if [ -n "$WINDOW" -o -n "$TMUX" ]; then
    export SSH_AUTH_SOCK="$HOME/.auth/ssh-agent-sock-$HOST"
fi
