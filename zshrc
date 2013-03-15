autoload -U compinit && compinit

#commo ndirectories
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

setopt auto_cd

#for zsh-complettions
fpath=(/usr/local/share/zsh-completions $fpath)
export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=10 -J-Djruby.compile.mode=FORCE -J-Xms2048m -J-Xmx2048m -J-XX:MaxPermSize=512m -J-server"
# export TORQUEBOX_HOME=`torquebox env torquebox_home`
