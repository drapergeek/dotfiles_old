. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

# recommended by brew doctor
export PATH='/usr/local/bin:/Users/gdraper/.rvm/gems/ruby-1.9.2-p290/bin:/Users/gdraper/.rvm/gems/ruby-1.9.2-p290@global/bin:/Users/gdraper/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/gdraper/.rvm/bin:/Users/gdraper/bin:/Users/gdraper/.bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/rvm:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin'

# RVM
[[ -s '/Users/gdraper/.rvm/scripts/rvm' ]] && source '/Users/gdraper/.rvm/scripts/rvm'
