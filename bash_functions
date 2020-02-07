##################################
##         bashrcKit-Functions  ##
##         ~/.bash_functions    ##  
##         Author: n173hawk     ##
##################################

#The purpose of this file is to create bash functions to make life in the terminal easier, by simplifying some common tasks.  After adding this file to your home directory (~/) or making changes, you will need to run the command #'source ~/.bashrc' or restart your terminal.

###########################START OF FUNCTIONS##########################

#sed using rep command
function rep() {
	sed -i "s/"$1"/"$2"/g" $3
}

#Make a directory and change into that directory
function mkcd() {
	mkdir $1 && cd $1
}

#Connect to AWS EC2 Instance with IP as variable.
function aws() {
location=$(nslookup $1|grep name|awk '{print $4}'|sed 's/.$//')

echo "ssh -i /opt/c2/keys/"$1".pem ubuntu@"$location
ssh -i "/opt/c2/keys/"$1".pem" ubuntu@$location
}

#Extract archives without having to remember all of the commands.  Will build upon this as the need arises.
function x () {
	if [ -f $1 ] ; then
		case $1 in
			*.rar)		unrar x $1	;;		
			*.tar)		tar xvf $1	;;
			*.tar.gz) 	tar xvzf $1	;;
			*.tar.bz2)	tar xvjf $1	;;
			*.bz2)		bunzip2 $1	;; 
			*.tgz)		tar xvzf $1	;;
			*.gz)		gunzip $1	;;
			*.zip)		unzip $1	;;
			*.tbz2)		tar xvjf $1	;;
			*.Z)		uncompress $1	;;
			*.7z)		7z x $1		;;
			*.exe)		cabextract ./"$1"	;;
			*)		echo "Cannot extract this file'$1'"	;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

#############################END OF FUNCTIONS##########################
