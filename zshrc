. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc


#common directories
setopt auto_cd
cdpath=($HOME/Development $HOME/Dropbox/code)
#open new terminals in current directory
#export CURRENT_PROJECT_PATH=$HOME/.current-project

#function chpwd {
#  echo $(pwd) >! $CURRENT_PROJECT_PATH
#}

#current() {
#    if [[ -f $CURRENT_PROJECT_PATH ]]; then
#          cd "$(cat $CURRENT_PROJECT_PATH)"
#            fi
#          }

#current
#end opening current directory
