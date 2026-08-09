HISTFILE=~/.khist
HISTSIZE=1000

. $HOME/.envrc

alias sysgit='doas env GIT_CONFIG_GLOBAL=$HOME/.gitconfig git --git-dir=/root/rootfiles --work-tree=/'

bind '^H=delete-word-backward'
bind '^[[M=delete-word-forward'
