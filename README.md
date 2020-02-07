# bashrcKit
Aliases and functions added to bashrc file to simplify workflow, improve existing commands, and fix common typos.  This is a work in progress and will be updated.


_____________________________________________________________________
## Instructions

### Script Installation
Simply run setup.sh from this repository.
_____________________________________________________________________
### Manual Installation

copy bash_aliases and bash_functions to your home folder and make them hidden.

  *cp bash_aliases ~/.bash_aliases*
  *cp bash_functions ~/.bash_functions*
    
Run the following to point your ~/.bashrc file to the alias and function files.

*echo "if [ -f ~/.bash_aliases ] ; then . ~/.bash_aliases fi" >> ~/.bashrc*
*echo "if [ -f ~/.bash_functions ] ; then . ~/.bash_functions fi" >> ~/.bashrc*

And finally you can reload bashrc with the following:

*source ~/.bashrc*

_____________________________________________________________________
## Usage:

### Aliases:

**updater** – this is a quick way of running apt update and apt upgrade -y

**ls** – changes the default ls to show results of ls -lath

**ping** – ping command is changed to show results of ping -c 3 for a count of 3, rather than a default continuous ping

**grep** – changes default grep to grep –color=auto to highlight grep searches

**cobalt** – This changes directoryies to the cobalt strike directory and launches cobalt strike.  NOTE:  This may need to be changed to fit your situation, or removed if you do not use cobalt strike.

**cobaltext** – This changes directory to my cobalt strike extension kit directory.  NOTE:  This again may need to be adjusted to fit your needs.

**clone** – simplifies ‘git clone’ to just clone

**Pythong** – I often mistype python to pythong for reason uknown to me.  To help with my frequent typos I created this alias.

**search** – Quick way to search repostiries for a  package. Replaces apt search

**cache** – Quick way to search repoistories cache for  package.  Replaces apt-cache search

_____________________________________________________________________

### Functions:

**rep** – Used to replace all instances of a string with another string in a file.

*Usage:*  rep directory1 anotherdir testfile.txt

*Results:*
/opt/directory1/
/usr/directory1/

Changed to

/opt/anotherdir/
/usr/anotherdir/


**mkcd** – Make a directory and change into that directory

*Usage:* mkcd newfolder

*Results:* 
user@host:~# mkcd newfolder
user@host:~/newfolder/#


**aws** – Connect to c2 instance with just IP.  NOTE:  This requires your pem files to be named <ipaddress>.pem in the /opt/c2/keys/ directory.  This may need to be changed to fit your needs.  

*Usage:*  c2connect x.x.x.x

*Results:* 


**x** – Extract archives without having to remember all of the commands.  Will build upon this as the need arises.

*Usage:*  x somearchive.tar.gz

*Result:* somearchive
