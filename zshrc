. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc
