#!/bin/sh

echo '

                          /$$                                      /$$      
                         | $$                                     | $$      
     /$$$$$$$  /$$$$$$  /$$$$$$   /$$   /$$  /$$$$$$      /$$$$$$$| $$$$$$$ 
    /$$_____/ /$$__  $$|_  $$_/  | $$  | $$ /$$__  $$    /$$_____/| $$__  $$
   |  $$$$$$ | $$$$$$$$  | $$    | $$  | $$| $$  \ $$   |  $$$$$$ | $$  \ $$
    \____  $$| $$_____/  | $$ /$$| $$  | $$| $$  | $$    \____  $$| $$  | $$
    /$$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$/| $$$$$$$//$$ /$$$$$$$/| $$  | $$
   |_______/  \_______/   \___/   \______/ | $$____/|__/|_______/ |__/  |__/
                                           | $$                             
                                           | $$                             
                                           |__/

   *** This is My Emacs setup script ***

   1. Download https://github.com/shunk031/emacs.d.git
   2. Symlinking "emacs.d" to your home directory
   
'

# Prepare some functions

# To input "yes" or "no" to the user
askYesOrNo() {
    while true ; do
	read -p "$1 (y/n)? " answer
	case $answer in
	    [yY] | [yY]es | YES )
		return 0;;
	    [nN] | [nN]o | NO )
		return 1;;
	    * ) echo "Please answer yes or no.";;
	esac
    done
}

DOTEMACS=$HOME/.emacs.d

# Create some symbolic links to home directory
ln -sfn ~/emacs.d ~/.emacs.d
echo "Created symbolic link of .emacs.d to home directory"

ln -sfn ~/emacs.d/etc/aspell.conf ~/.aspell.conf
echo "Created symbolic link of .aspell.conf to home directory"



# Setup GFM preview environment
askYesOrNo "
Are you sure you want to \"setup GFM preview environment\"?"
if [ $? -eq 0 ]; then
    
    sudo ln -sfn ~/emacs.d/etc/markdown /bin/markdown
    echo "Created symbolic link of markdown to /bin/markdown"
    
    sudo chmod +x /bin/markdown
    echo "You can run GFM preview script!"
    
else
    echo "Setting up GFM preview environment has been canceled."
fi


# Setup emacs-realtime-markdown-viewer settings
askYesOrNo "
Are you sure you want to \"setup emacs-realtime-markdown-viewer settings\"?"
if [ $? -eq 0 ]; then
    
    dir=~/.emacs.d/el-get/emacs-realtime-markdown-viewer

    if [ -e $dir ]; then
	cd $dir
	cpanm --installdeps .
	echo "You can use emacs-realtime-markdown-viewer."
	cd $DOTEMACS
    else
	echo "Can't find $dir"
    fi
else
    echo "Setting up has been canceled."
fi


# Setup Python development environment
askYesOrNo "
Are you sure you want to setup \"python development environment\"?"
if [ $? -eq 0 ]; then
    
    # install the modules required for python development environment 
    sudo pip install autopep8 rope jedi flake8 importmagic yapf
    
    # install ipython and dependency: matplotlib
    sudo pip install ipython matplotlib
else
    echo "Setting up has been canceled."
fi

