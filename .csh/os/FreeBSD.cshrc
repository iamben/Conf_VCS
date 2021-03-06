#
alias   ls      '/bin/ls -G'
alias   g       '/usr/bin/grep --mmap --color=always'
setenv	LESS	"-Rf"
setenv	LC_ALL	en_US.UTF-8
setenv	LANG	en_US.UTF-8

# agent forwarding, for screen and tmux
$HOME/bin/ssh-auth-sock
if ($?WINDOW || $?TMUX) then
    setenv SSH_AUTH_SOCK "$HOME/.auth/ssh-agent-sock-$HOST"
endif
