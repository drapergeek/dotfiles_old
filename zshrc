autoload -U compinit && compinit

#common directories
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

setopt auto_cd
cdpath=($HOME/Development $HOME/Dropbox/code)

# recommended by brew doctor
export PATH='/usr/local/bin:bundler_binstubs:/Users/draper/bin:/Users/draper/.bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/rvm:/usr/local/git/bin:/usr/local/bin:/Users/gdraper/bin:/Users/gdraper/.bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/rvm:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/draper/.rvm/bin'

# RVM
[[ -s '/Users/draper/.rvm/scripts/rvm' ]] && source '/Users/draper/.rvm/scripts/rvm'

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/local/bin:bundler_binstubs:/Users/draper/bin:/Users/draper/.bin:/usr/local/homebrew/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/rvm:/usr/local/git/bin:/Users/gdraper/bin:/Users/gdraper/.bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/draper/.rvm/bin'

# RVM
[[ -s '/Users/draper/.rvm/scripts/rvm' ]] && source '/Users/draper/.rvm/scripts/rvm'
