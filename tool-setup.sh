#!/bin/bash

echo "This is tool setup shell script."

#=====================================================================
# aptのアップデート
#=====================================================================

yes | sudo apt-get update
yes | sudo apt-get upgrade

#=====================================================================
# Python開発環境の構築
#=====================================================================

# PATHを追加
echo "Add PATH"
$ PATH=$PATH:~/.local/bin
$ export PATH

# pipをインストール
echo "Install pip"
yas | sudo apt-get install python-pip

# autopep8をインストール
echo "Install autopep8"
yas | sudo pip install --user autopep8

# rope, jediをインストール
echo "Install rope, jedi"
yes | sudo pip install --user rope jedi

# flake8をインストール
echo "Install flake8"
yes | sudo pip install --user flake8

# numpy, scipyをインストール
echo "Install numpy, scipy"
yes | sudo apt-get install python-numpy python-scipy 

# scikit-learn, matplotlibをインストール
echo "Install scikit-learn, matplotlib"
yes | sudo apt-get install python-sklearn python-matplotlib

# NLTKをインストール
echo "Install NLTK"
yes | sudo pip install nltk

#=====================================================================
# JDKのインストール
#=====================================================================

#JDKをインストール
echo "Install JDK"
yes | sudo apt-get install openjdk-6-jdk openjdk-6-jre

#=====================================================================
# Tidyのインストール
#=====================================================================

# Tidyをインストール
echo "Install Tidy"
yes | sudo apt-get install tidy

# tidy-html5をインストール
echo "Install tidy-html5"
git clone https://github.com/htacg/tidy-html5.git
cd ~/tidy-html5/build/cmake
./build-me.sh
sudo make install

#=====================================================================
# arduino開発環境の構築
#=====================================================================

# arduinoIDEをインストール
echo "Install arduino"
yes | sudo apt-get install arduino

# Inoをインストール
echo "Install ino"
git clone git://github.com/amperka/ino.git
cd ino
sudo make install

#=====================================================================
# migemoのインストール
#=====================================================================

echo "Install migemo"
yes | sudo apt-get install cmigemo
yes | sudo apt-get install migemo

#=====================================================================
# ag(The Silver Searcher)をインストール
#=====================================================================

echo "Install ag"
yes | sudo apt-get install software-properties-common # (if required)
yes | sudo apt-add-repository ppa:mizuno-as/silversearcher-ag
yes | sudo apt-get update
yes | sudo apt-get install silversearcher-ag
