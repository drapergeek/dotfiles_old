autoload -U compinit && compinit

#common directories
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

setopt auto_cd
cdpath=($HOME/Development $HOME/Dropbox/code)
