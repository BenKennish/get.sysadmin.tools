# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Ben's self-made aliases...
# see http://alias.sh/

alias ll='ls -lA --color=auto'
alias l.='ls -ld .* --color=auto'
alias sd='sudo'

# type 'root' after running a command if u forgot to use sudo
#alias root='sudo $(history -p !!)'

# what's taking up so much disk space (from current directory down)
alias diskspace='du -S | sort -n -r | less'

# what are the biggest folders in current directory?
alias folders='find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn'

# compact, colourful git log
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# show most frequently used commands
# doesn't work if commands are preceeded by an environment variable e.g.  SSH_AUTH_SOCK=/tmp/example ssh hostname.com
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'

# verify with GPG using keyserver
alias gpg-verify='gpg --keyserver keys.gnupg.net --keyserver-options auto-key-retrieve --verify'
