##################################
##         bashrcKit Setup      ##
##            ~/.bashrc		      ##  
##         Author: n173hawk     ##
##################################
#!/bin/bash
cp bash_aliases ~/.bash_aliases
cp bash_functions ~/.bash_functions

echo "if [ -f ~/.bash_aliases ] ; then . ~/.bash_aliases fi" >> ~/.bashrc
echo "if [ -f ~/.bash_functions ] ; then . ~/.bash_functions fi" >> ~/.bashrc
source ~/.bashrc