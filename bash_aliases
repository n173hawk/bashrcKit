##################################
##         bashrcKit Aliases    ##
##         ~/.bash_aliases      ##  
##         Author: n173hawk     ##
##################################

#The purpose of this file is to create bash aliases to make life in the terminal easier, by simplifying some common tasks, improving existing commands, and fixing common typos.  After adding this file to your home directory (~/), or making changes you will need to run the command 'source ~/.bashrc' or restart your terminal.

###########################START OF ALIASES#############################

#One simple command to update and upgrade my system.
alias updater='apt update && apt upgrade -y'

#Change ls to include -lath (long listing format, all entries, human readable file sizes, and sort by modification time with newest first)
alias ls='ls -lath --color=auto'

#Control count of request packets when using ping.  Count set to 3
alias ping='ping -c 3'

#colorize grep
alias grep='grep --color=auto'

#Change to cobalt strike directory and launch cobalt strike
alias cobalt='cd /opt/cobaltstrike/ && ./cobaltstrike'

#Change directory to the cobalt strike extension kit
alias cobaltext='cd /opt/cobalt_strike_extension_kit'

#Change git clone to just clone
alias clone='git clone'

#More often than not (for whatever reason) I type pythong when I mean to type python...this will allow my typo to still work
alias pythong='python'

#Quick search of repository for package instead of using apt search or apt-cache search
alias search='apt search'
alias cache='apt-cache search'

#############################END OF ALIASES#############################
