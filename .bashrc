#!/bin/bash
# if the shell is not interactive don't do anything 
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# ls aliases 
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'

# check for custom aliases 
if [ -f ~/.bash_aliases ]; then                                                                                
    . ~/.bash_aliases                                                                                          
fi         
# set our prompt 
export PS1="\[$(tput setaf 4)\](\[$(tput setaf 6)\]\u\[$(tput setaf 4)\]:\[$(tput setaf 6)\]\w\[$(tput setaf 4)\])\[$(tput setaf 6)\]\[$(tput bold)\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]"
# pronpt #2 
export PS2='\[\e[0;38;5;51m\][\[\e[0;38;5;39m\]*\[\e[0;38;5;51m\]]\[\e[0m\]'
