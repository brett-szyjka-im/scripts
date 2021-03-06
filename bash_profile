# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local/bin

export PATH

# stole keychain install info from here: https://www.cyberciti.biz/faq/installing-keychain-manager-for-ssh-agent-on-centos-linux-6-7/
/usr/bin/keychain --timeout 4000  $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh

