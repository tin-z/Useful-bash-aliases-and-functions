### List files routine ###
alias frshls='function _setLsFresh(){ tmp1234="1"; if [ ! -z $2 ]; then tmp1234=$2; fi; ls "$1" -ltrh | tail "-$tmp1234"; }; _setLsFresh'
alias frshmv='function _setMvFresh(){ frshls "$1" "$2" | sed -E "s/[ ][ ]+/ /g" | sed  "s/.*[0-9][0-9]:[0-9][0-9] \(.*\)/\1/g" | while read xyz ; do mv "$1/$xyz" "./" ; done; }; _setMvFresh'
alias frshcp='function _setMvFresh(){ frshls "$1" "$2" | sed -E "s/[ ][ ]+/ /g" | sed  "s/.*[0-9][0-9]:[0-9][0-9] \(.*\)/\1/g" | while read xyz ; do cp "$1/$xyz" "./" ; done; }; _setMvFresh'
alias xss='function _xss(){ tmp1234="."; if [ ! -z $1 ]; then tmp1234=$1; fi; xdg-open "$tmp1234"; }; _xss'

alias set_workdir='function _setworkdir(){ tmp1234="$PWD"; if [ ! -z $1 ]; then tmp1234=$1; fi; echo "alias wknow=\"cd $tmp1234\"" > ~/.wkdir; source ~/.wkdir; }; _setworkdir'
if [ ! -f ~/.wkdir ]; then
  touch ~/.wkdir && chmod 0700 ~/.wkdir && set_workdir ~
else
  source ~/.wkdir
fi

### Fix typos and other stuff ###
alias cls="clear"
alias sl='ls'
alias clipbar="xclip -selection clipboard"
alias gtfo='kill -11 "$1"'
alias history_uniq="history | sed -e 's/[ ]*[0-9]*[ ]*\(.*\)/\1/g' | sort -h | uniq | cut -d' ' -f 1 | sort -h | uniq"
alias history_uniqless="history_uniq | less"


### Editors ###
export MYVIMRC="~/.vimrc"
export EDITOR="/usr/bin/vim"
# Cscope config
export CSCOPE_EDITOR=`which vim`
alias cscope_cpp="find . -iname '*.cpp' -o -iname '*.c' -o -iname '*.h' -o -iname '*.hpp' -o -iname '*.cc' > cscope.files"
alias cscope_java="find . -iname '*.java' > cscope.files"
alias cscope_py="find . -iname '*.py' > cscope.files"
alias cscope_all="find . -iname '*.cpp' -o -iname '*.c' -o -iname '*.h' -o -iname '*.hpp' -o -iname '*.cc' -o -iname '*.java' -o -iname '*.py' > cscope.files"
alias cscope_database="cscope -q -R -b -i cscope.files"
alias cscope_Clean='rm cscope.in.out cscope.po.out cscope.files cscope.out'
#now launch: cscope -d

# prompt settings
T1PROMPT="\[\e]0;\[\033[01;31m\]\___[\[\033[01;34m\]\W\[\033[01;31m\]]\[\033[00m\]\$ "
export PS1=$T1PROMPT

