#!/bin/bash

echo "# ==============================================================="
echo "#"
echo "# This is tool setup shell script."
echo "#"
echo "# ==============================================================="

#=====================================================================
# aptのアップデート
#=====================================================================

sudo apt-get update
sudo apt-get -y upgrade

#=====================================================================
# texinfoのインストール
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install texinfo"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y texinfo

#=====================================================================
# Python開発環境の構築
#=====================================================================

echo "# ==============================================================="
echo "#"
echo "# Install pip"
echo "#"
echo "# =============================================================="

# pipをインストール
sudo apt-get install -y python-pip

echo "# ==============================================================="
echo "#"
echo "# Install autopep8"
echo "#"
echo "# ==============================================================="

# autopep8をインストール
pip install --user autopep8

echo "# =============================================================="
echo "#"
echo "# Install rope, jedi"
echo "#"
echo "# ==============================================================="

# rope, jediをインストール
pip install --user rope jedi

echo "# =============================================================="
echo "#"
echo "# Install flake8"
echo "#"
echo "# ==============================================================="

# flake8をインストール
pip install --user flake8

echo "# =============================================================="
echo "#"
echo "# Install numpy, scipy"
echo "#"
echo "# ==============================================================="

# numpy, scipyをインストール
sudo apt-get install -y python-numpy python-scipy

echo "# =============================================================="
echo "#"
echo "# Install scikit-learn, matplotlib"
echo "#"
echo "# ==============================================================="

# scikit-learn, matplotlibをインストール
sudo apt-get install -y python-sklearn python-matplotlib

echo "# =============================================================="
echo "#"
echo "# Install NLTK"
echo "#"
echo "# ==============================================================="

# NLTKをインストール
sudo pip install nltk

#=====================================================================
# R開発環境の構築
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install ESS"
echo "#"
echo "# ==============================================================="

# ESSをインストール
sudo apt-get install -y ess

echo "# =============================================================="
echo "#"
echo "# What you need to install \"linter\""
echo "#"
echo "# ==============================================================="

# lintrのセットアップに必要なもの
sudo apt-get install -y gfortran
sudo apt-get install -y liblapack-dev
sudo apt-get install -y libblas-dev

#=====================================================================
# JDKのインストール
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install JDK 8"
echo "#"
echo "# ==============================================================="

#JDKをインストール
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

#=====================================================================
# Java開発環境の構築
#=====================================================================

# malabar-modeを利用するための設定

echo "# =============================================================="
echo "#"
echo "# Install crul"
echo "#"
echo "# ==============================================================="

# crulをインストールする
sudo apt-get install -y curl

echo "# =============================================================="
echo "#"
echo "# Install GVM"
echo "#"
echo "# ==============================================================="

# GVMをインストールする
curl -s get.gvmtool.net | bash

echo "# =============================================================="
echo "#"
echo "# Install groovy"
echo "#"
echo "# ==============================================================="

# groovyをインストールする
gvm install groovy

echo "# =============================================================="
echo "#"
echo "# Install gradle"
echo "#"
echo "# ==============================================================="

# gradleをインストールする
gvm install gradle

#=====================================================================
# Tidyのインストール
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install Tidy"
echo "#"
echo "# ==============================================================="

# Tidyをインストール
sudo apt-get install -y tidy

echo "# =============================================================="
echo "#"
echo "# Install Tidy-html5"
echo "#"
echo "# ==============================================================="

# tidy-html5をインストール
git clone https://github.com/htacg/tidy-html5.git
cd ~/tidy-html5/build/cmake
./build-me.sh
sudo make install

#=====================================================================
# arduino開発環境の構築
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install ArduinoIDE"
echo "#"
echo "# ==============================================================="

# arduinoIDEをインストール
sudo apt-get install -y arduino

echo "# =============================================================="
echo "#"
echo "# Install ino"
echo "#"
echo "# ==============================================================="

# Inoをインストール
git clone git://github.com/amperka/ino.git
cd ino
sudo make install

#=====================================================================
# migemoのインストール
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install migemo"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y cmigemo
sudo apt-get install -y migemo

#=====================================================================
# ag(The Silver Searcher)をインストール
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install ag (The Silver Searcher)"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:mizuno-as/silversearcher-ag
sudo apt-get update
sudo apt-get install -y silversearcher-ag

#=====================================================================
# GitHub Markdown記述環境の構築
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Setup Github Markdown-mode"
echo "#"
echo "# ==============================================================="

sudo pip install grip

#=====================================================================
# emacs-mozcのインストール
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install emacs-mozc"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y emacs-mozc

#=====================================================================
# Ritcyフォントのインストールに必要なもの
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install fontforge"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y fontforge

#=====================================================================
# Ruby開発環境の構築
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install Ruby"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y ruby1.9.1-dev
sudo apt-get install -y ruby

echo "# =============================================================="
echo "#"
echo "# Install Redcarpet"
echo "#"
echo "# ==============================================================="

sudo gem install redcarpet

#=====================================================================
# TeX環境の構築
#=====================================================================

echo "# =============================================================="
echo "#"
echo "# Install TeX"
echo "#"
echo "# ==============================================================="

sudo apt-get install -y mercurial
