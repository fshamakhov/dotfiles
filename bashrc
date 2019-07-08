#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias rm='rm -I'

# color aliases
alias sudo='sudo '
alias ls='TERM=ansi ls --color=always'
alias dmesg='dmesg --color=always'
alias gcc='gcc -fdiagnostics-color=always'
alias dir='dir --color=always'

# PS1
INPUT_COLOR="\[\033[0m\]"
DIR_COLOR="\[\033[0;34m\]"
DIR="\w"

LINE_VERTICAL="\342\224\200"
LINE_CORNER_1="\342\224\214"
LINE_CORNER_2="\342\224\224"
LINE_COLOR="\[\033[0;32m\]"

USER_NAME="${LINE_COLOR}\u"
SYMBOL="${LINE_COLOR}$"
HOST_NAME="\[\033[0;35m\]\H"
AT_SYMBOL="\[\033[36m\]@"

COMMAND_AUX_DATA="[\[\e[0;34m\]\D{%F %T} \!${LINE_COLOR}]"

if [[ ${EUID} == 0 ]]; then
	USER_NAME="\[\033[0;31m\]\u"
	SYMBOL="\[\033[0;31m\]#"
fi

PS1="$LINE_COLOR$LINE_CORNER_1$LINE_VERTICAL$USER_NAME$AT_SYMBOL$HOST_NAME:$DIR_COLOR$DIR \n$LINE_COLOR$LINE_CORNER_2$LINE_VERTICAL$COMMAND_AUX_DATA$SYMBOL $INPUT_COLOR"

get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

# export DISPLAY=localhost:0.0
# export VISUAL=vim


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs

# Set up android sdk
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_HOME="$HOME/Android/Sdk/"
export PATH="$ANDROID_HOME:$ANDROID_HOME/tools/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$PATH"

export DEBFULLNAME="Fedor Shamakhov"
export DEBEMAIL="fedor.shamakhov@gmail.com"

export PATH="/home/fed/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Gotham Shell
# GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
# [[ -s $GOTHAM_SHELL ]] && source $GOTHAM_SHELL

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/fed/.sdkman"
[[ -s "/home/fed/.sdkman/bin/sdkman-init.sh" ]] && source "/home/fed/.sdkman/bin/sdkman-init.sh"
