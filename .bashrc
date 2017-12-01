# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Alias, Function, and Local definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
##
if [ -f ~/.bashaliases ]; then
    . ~/.bashaliases
fi
##
if [ -f ~/.bashfunctions ]; then
    . ~/.bashfunctions
fi
##Local definitions file is writable by non admin users. This is done for the convenience of guests accessing the system, as well as to make non-administrative modifications to environmental variables possible. 
##Local definitions should not be synced across systems, as it contains modifications to the standard environment which can be made on a per case basis, and may be incompatible with some, all but some, or all synchronized environments. 
##Local definitions may contain modifications to the standard environment which could cause crashing, instability, inaccessibility of binaries, and may include aliases for nonexistent or root-owned binaries which may conflict with those available in the system.
if [ -f ~/.bashlocal ]; then
    . ~/.bashlocal
fi
##over write able file thate saves user setting since bashsave or bs was last run 
##del with bashclear or bsc
if [ -f ~/.bashsave ]; then
    . ~/.bashsave
fi
####
PS1="\[\e[00;01;32;40m\]\!! \[\e[00;01;32;41m\] \w \[\e[00;01;32;40m\] @^[\u] \d $(tail -n 1 <(v4 | awk "{print \$1}")) \n[\D{%H:%M:%S}] $ \[\e[00;33m\]"




# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

