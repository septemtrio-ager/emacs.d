#!/bin/bash

echo "This is tool setup shell script."

#=====================================================================
# aptのアップデート
#=====================================================================

sudo apt-get update
sudo apt-get -y upgrade

#=====================================================================
# texinfoのインストール
#=====================================================================

sudo apt-get install -y texinfo

#=====================================================================
# Python開発環境の構築
#=====================================================================

# pipをインストール
echo "Install pip"
sudo apt-get install -y python-pip

# autopep8をインストール
echo "Install autopep8"
pip install --user autopep8

# rope, jediをインストール
echo "Install rope, jedi"
pip install --user rope jedi

# flake8をインストール
echo "Install flake8"
pip install --user flake8

# numpy, scipyをインストール
echo "Install numpy, scipy"
sudo apt-get install -y python-numpy python-scipy

# scikit-learn, matplotlibをインストール
echo "Install scikit-learn, matplotlib"
sudo apt-get install -y python-sklearn python-matplotlib

# NLTKをインストール
echo "Install NLTK"
sudo pip install nltk

#=====================================================================
# R開発環境の構築
#=====================================================================

# ESSをインストール
echo "Install ESS"
sudo apt-get install -y ess

# lintrのセットアップに必要なもの
sudo apt-get install -y gfortran
sudo apt-get install -y liblapack-dev
sudo apt-get install -y libblas-dev

#=====================================================================
# JDKのインストール
#=====================================================================

#JDKをインストール
echo "Install JDK"
sudo apt-get install -y openjdk-6-jdk openjdk-6-jre

#=====================================================================
# Java開発環境の構築
#=====================================================================

# malabar-modeを利用するための設定

echo "Install crul"
sudo apt-get install -y curl

# GVMをインストールする
echo "Install GVM"
curl -s get.gvmtool.net | bash

# groovyをインストールする
gvm install groovy

# gradleをインストールする
gvm install gradle

#=====================================================================
# Tidyのインストール
#=====================================================================

# Tidyをインストール
echo "Install Tidy"
sudo apt-get install -y tidy

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
sudo apt-get install -y arduino

# Inoをインストール
echo "Install ino"
git clone git://github.com/amperka/ino.git
cd ino
sudo make install

#=====================================================================
# migemoのインストール
#=====================================================================

echo "Install migemo"
sudo apt-get install -y cmigemo
sudo apt-get install -y migemo

#=====================================================================
# ag(The Silver Searcher)をインストール
#=====================================================================

echo "Install ag"
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:mizuno-as/silversearcher-ag
sudo apt-get update
sudo apt-get install -y silversearcher-ag

#=====================================================================
# GitHub Markdown記述環境の構築
#=====================================================================

echo "Setup GitHub Markdown - Mode"
sudo pip install grip

#=====================================================================
# emacs-mozcのインストール
#=====================================================================

echo "Install emacs-mozc"
sudo apt-get install -y emacs-mozc

#=====================================================================
# Ritcyフォントのインストールに必要なもの
#=====================================================================

echo "Install fontforge"
sudo apt-get install -y fontforge
