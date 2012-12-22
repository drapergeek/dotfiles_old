autoload -U compinit && compinit

#common directories
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

setopt auto_cd

#for zsh-complettions
fpath=(/usr/local/share/zsh-completions $fpath)
