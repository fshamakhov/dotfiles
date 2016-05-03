#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# color aliases
alias sudo='sudo '
alias ls='ls --color=always'
alias dmesg='dmesg --color=always'
alias grep='grep --color=always'
alias gcc='gcc -fdiagnostics-color=always'
alias pacman='pacman --color=always'
alias dir='dir --color=always'

# PS1
INPUT_COLOR="\[\033[0m\]"
DIR_COLOR="\[\033[0;33m\]"
DIR="\w"

LINE_VERTICAL="\342\224\200"
LINE_CORNER_1="\342\224\214"
LINE_CORNER_2="\342\224\224"
LINE_COLOR="\[\033[0;37m\]"

USER_NAME="\[\033[0;32m\]\u"
SYMBOL="\[\033[0;32m\]$"

if [[ ${EUID} == 0 ]]; then
	USER_NAME="\[\033[0;31m\]\u"
	SYMBOL="\[\033[0;31m\]#"
fi

PS1="$LINE_COLOR$LINE_CORNER_1$LINE_VERTICAL $USER_NAME $DIR_COLOR$DIR \n$LINE_COLOR$LINE_CORNER_2$LINE_VERTICAL $SYMBOL $INPUT_COLOR"
HISTSIZE= HISTFILESIZE=
export VISUAL="vim"

#root
source /opt/root-6.04.16/bin/thisroot.sh
alias thisroot5='source /opt/root-5.34.36/bin/thisroot.sh'
alias thisroot6='source /opt/root-6.04.16/bin/thisroot.sh'
