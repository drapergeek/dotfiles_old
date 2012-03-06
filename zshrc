. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

# recommended by brew doctor
export PATH='/usr/local/bin:/Users/gdraper/bin:/Users/gdraper/.bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/rvm:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin'

#rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

#open new terminals in current directory
export CURRENT_PROJECT_PATH=$HOME/.current-project

function chpwd {
  echo $(pwd) >! $CURRENT_PROJECT_PATH
}

current() {
    if [[ -f $CURRENT_PROJECT_PATH ]]; then
          cd "$(cat $CURRENT_PROJECT_PATH)"
            fi
          }

current
#end opening current directory
