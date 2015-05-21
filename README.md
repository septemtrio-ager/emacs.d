# This is my Emacs dot files

## Requirements
* Emacs 24.3 or greater  
  24.4，24.5についても動作を確認しています。
* Ubuntu 14.4 or greater
* Linux Mint 17.1 or greater
* Lubuntu 14.4 or greater

## Support Programming Languages

* C/C++
* Java
* Python
* R
* HTML
* CSS
* Lisp (Emacs Lisp)
* Markdown (Github Flavored Markdown)
* Arduino
* Twitter

## Directory Configuration

~~~~
emacs.d
│
├── init.el       # 初期設定ファイル。初回起動時にel-getが自動でインストールされる
│
├── inits         # init-loader.elによって読み込まれる設定ファイルのディレクトリ
│
├── auto-install  # auto-install.elでインストールしたelispが入る
│
├── elpa          # package.elでインストールしたelispが入る
│
├── site-lisp     # その他サイトなどから拾ってきたelispを入れる
│
├── el-get        # el-getを使ってインストールしたelispなどが入る
│
├── backups       # バックアップファイルやオートセーブファイルが入る
│
└──snippets       # yasnippetのスニペットが入る
        │
        ├── mysnippets    # 自分で作成したスニペットが入る
        │
        └── site-snippets # 拾ってきたスニペットが入る

~~~~

## .emacs
.emacsが存在する場合、init.elを読み込むように以下を.emacsに追加する
~~~~
(load (expand-file-name (concat (getenv "HOME") "/.emacs.d/init")))
~~~~

## Installation

~~~~
$ git clone https://github.com/septemtrio-ager/emacs.d.git ~/.emacs.d
$ cd ~/.emacs.d
$ ./tool-setup.sh
$ emacs
~~~~

## Recommended Settings

* CapsLockキーをCtrlキーに変更する  
【参考】Caps LockキーをCtrlキーにする(Ubuntu)  
http://l-w-i.net/t/ubuntu/key_001.txt

* フォントについて  
【参考】プログラミング用フォント Ricty  
https://github.com/yascentur/Ricty

* Python開発環境について  
 ~/.local/bin にPATHを通す
 1. `~/.profile` をエディタで開く  
 2. `PATH="$PATH:~/.local/bin"` を最終行に追加  
 3. `source ~/.profile` を実行することで即時反映させる

* R開発環境について
 * 最新版のRをインストールする  
【参考】UbuntuにRをインストールするための手順  
http://www.trifields.jp/install-r-in-ubuntu-1000  
Linux Mint 17.1 RebeccaについてはUbuntu 14.04 Trustyをベースにしているため, DISTRIB_CODENAME=trusty と読み替えること.

 * lintrの導入  
 flycheckのSyntaxCheckerであるlintrパッケージをインストール  
    1. Rを起動して以下のコマンドを入力  
	`> options(CRAN = "http://cran.ism.ac.jp/")`  
	`> options(repos = "http://cran.ism.ac.jp/")`  
    2. lintrをパッケージ指定してインストール  
	`> install.packages("lintr", dep=T)`
