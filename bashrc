# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# working directory in Windows mounted dir so I can use sublime to edit and wsl to manage source control
alias cwd='cd /mnt/c/Users/brett516/code'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
