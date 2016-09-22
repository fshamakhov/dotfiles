#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias rm='rm -I'

# color aliases
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS
alias sudo='sudo '
alias ls='TERM=ansi ls --color=always'
alias dmesg='dmesg --color=always'
alias gcc='gcc -fdiagnostics-color=always'
alias pacman='pacman --color=always'
alias dir='dir --color=always'
alias ssh='ssh '
alias 106.irk.ru='-p 9916 baikal@106.irk.ru'
alias sshpass='sshpass '
alias мы-из.рф='vsbph250@80.78.250.176'
alias rhl127pc='-Y fed@159.93.76.242'

# mount with {d,f}mask
alias mount-usb='mount -o dmask=022 -o fmask=133 -o uid=`id -u fed` -o gid=`id -u fed`'
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
HOST_NAME="\[\033[0;35m\]\H"
AT_SYMBOL="\[\033[37m\]@"


if [[ ${EUID} == 0 ]]; then
	USER_NAME="\[\033[0;31m\]\u"
	SYMBOL="\[\033[0;31m\]#"
fi

PS1="$LINE_COLOR$LINE_CORNER_1$LINE_VERTICAL$USER_NAME$AT_SYMBOL$HOST_NAME:$DIR_COLOR$DIR \n$LINE_COLOR$LINE_CORNER_2$LINE_VERTICAL $SYMBOL $INPUT_COLOR"
HISTSIZE= HISTFILESIZE=
export VISUAL="emc"
export EDITOR="emc"
export BARSSYS="/home/fed/BARS/trunk"

#root
source /opt/root-6.04.18/bin/thisroot.sh
#steam
alias steam=LD_PRELOAD="'/usr/$LIB/libstdc++.so.6 /usr/$LIB/libgcc_s.so.1 /usr/$LIB/libxcb.so.1 /usr/$LIB/libgpg-error.so' steam"

wrapper(){
    start=$(date +%s)
    "$@"
    [ $(($(date +%s) - start)) -le 1 ] || notify-send "Notification" "Long\
 running command \"$(echo $@)\" took $(($(date +%s) - start)) seconds to finish"
}

set -o emacs
