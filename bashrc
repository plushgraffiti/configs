### Aliases ###
alias ls="ls --color"
alias ll="ls --color -l"
alias la="ls --color -a"
alias vim="vim -y"
alias nano="nano -w"
alias c="cd;clear"
alias cp="cp -i"
alias grep='grep --color=auto -Hno'
alias ping='ping -c 10'
alias df='df -h'
alias aka='cat ~/.bashrc | grep alias'
alias pp='git pull; git push'
alias prod_deploy='git checkout live && git pull && git merge master && git push && cap prod deploy && git checkout master'
alias lock='xscreensaver-command --lock'

# History fix
shopt -s histappend

# Anti-alised fonts in Java applications
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
export JAVA_FONTS=/usr/share/fonts/TTF

### Functions ###
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) rar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
# Copy and go to the dir
cpg (){
  if [ -d "$2" ];then
    cp $1 $2 && cd $2
  else
    cp $1 $2
  fi
}
# Move and go to dir
mvg (){
  if [ -d "$2" ];then
    mv $1 $2 && cd $2
  else
    mv $1 $2
  fi
}
# Swap two filenames around
swap () {              
  if [ $# -ne 2 ]; then
    echo "swap: 2 arguments needed"; return 1
  fi
  if [ ! -e $1 ]; then
    echo "swap: $1 does not exist"; return 1
  fi
  if [ ! -e $2 ]; then
    echo "swap: $2 does not exist"; return 1
  fi
  local TMPFILE=tmp.$$ ; mv $1 $TMPFILE ; mv $2 $1 ; mv $TMPFILE $2
}
# Simple backup for a file 
bu () { cp $1 ${1}-`date +%Y%m%d%H%M`.backup ; }
