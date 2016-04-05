#!/bin/sh

echo '

                          /$$                                      /$$      
                         | $$                                     | $$      
     /$$$$$$$  /$$$$$$  /$$$$$$   /$$   /$$  /$$$$$$      /$$$$$$$| $$$$$$$ 
    /$$_____/ /$$__  $$|_  $$_/  | $$  | $$ /$$__  $$    /$$_____/| $$__ nnnn $$
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
   3. Setup GFM preview environment
   4. Setup Emacs realtime markdown viewer settings
   5. Setup Python development environment
   
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

readonly DOTEMACS=$HOME/.emacs.d

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
    echo -n "\nSetting up GFM preview environment has been canceled.\n"
fi



# Setup emacs-realtime-markdown-viewer settings
askYesOrNo "
Are you sure you want to \"setup emacs-realtime-markdown-viewer settings\"?"
if [ $? -eq 0 ]; then
    
    readonly EMACS_RTMV_DIR=~/.emacs.d/el-get/emacs-realtime-markdown-viewer

    if [ -e $EMACS_RTMV_DIR ]; then
	cd $EMACS_RTMV_DIR
	cpanm --installdeps .
	echo "You can use emacs-realtime-markdown-viewer."
	cd $DOTEMACS
    else
	echo -n "\nCan't find $EMACS_RTMV_DIR\n"
    fi
else
    echo -n "\nSetting up has been canceled.\n"
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
    echo -n "\nSetting up has been canceled.\n"
fi
