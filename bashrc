#!/bin/bash
# PS1
# INPUT_COLOR="\[\033[0m\]"
# DIR_COLOR="\[\033[0;34m\]"
# DIR="\w"
# 
# LINE_VERTICAL="\342\224\200"
# LINE_CORNER_1="\342\224\214"
# LINE_CORNER_2="\342\224\224"
# LINE_COLOR="\[\033[0;32m\]"
# 
# USER_NAME="${LINE_COLOR}\u"
# SYMBOL="${LINE_COLOR}$"
# HOST_NAME="\[\033[0;35m\]\H"
# AT_SYMBOL="\[\033[36m\]@"
# 
# COMMAND_AUX_DATA="[\[\e[0;34m\]\D{%F %T} \!${LINE_COLOR}]"
# 
# if [[ ${EUID} == 0 ]]; then
# 	USER_NAME="\[\033[0;31m\]\u"
# 	SYMBOL="\[\033[0;31m\]#"
# fi
# 
# PS1="$LINE_COLOR$LINE_CORNER_1$LINE_VERTICAL$USER_NAME$AT_SYMBOL$HOST_NAME:$DIR_COLOR$DIR \n$LINE_COLOR$LINE_CORNER_2$LINE_VERTICAL$COMMAND_AUX_DATA$SYMBOL $INPUT_COLOR"
# 
get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

# export DISPLAY=localhost:0.0
# export VISUAL=vim

# export VIRTUALENVWRAPPER_PYTHON=~/.pyenv/shims/python
# source ~/.pyenv/shims/virtualenvwrapper.sh
# export WORKON_HOME=~/.virtualenvs
# 
# Set up android sdk
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT=${ANDROID_HOME}
export ANDROID_NDK_ROOT="${ANDROID_HOME}/ndk/21.0.6113669"
export PATH="${ANDROID_HOME}:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${PATH}"

export DEBFULLNAME="Fedor Shamakhov"
export DEBEMAIL="fedor.shamakhov@gmail.com"

export PATH="/home/fed/.pyenv/bin:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Gotham Shell
# GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
# [[ -s $GOTHAM_SHELL ]] && source $GOTHAM_SHELL

export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
