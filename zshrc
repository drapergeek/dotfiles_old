. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

#common directories
setopt auto_cd
cdpath=($HOME/Development $HOME/Dropbox/code)
