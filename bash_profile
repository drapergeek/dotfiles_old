export PATH="$HOME/.rbenv/bin:$PATH"
export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=10 -J-Djruby.compile.mode=FORCE -J-Xms2048m -J-Xmx2048m -J-XX:MaxPermSize=512m -J-server"
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
eval "$(rbenv init -)"
