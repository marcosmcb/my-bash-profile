#!/bin/bash 

fortune | cowsay | lolcat

alias scala='sbt console'
export PATH="/usr/local/mysql/bin:$PATH"

# added by Miniconda2 4.1.11 installer
export PATH="/Users/marcoscavalcante/miniconda2/bin:$PATH"

export NODE_PATH=`which node`
export JYTHON_HOME=/usr/local/Cellar/jython/2.5.3/libexec


# Git stuff for autocompletion
source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_RED="\[\033[0;91m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_RED"\u@\h"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$GREEN": "

alias ll='ls -lah'
alias gg='git status -s'
alias jupyter='jupyter notebook'

export EDITOR=/usr/local/bin/vim

vscode () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}   
