# This is my Emacs dot files

## Requirements
* Emacs 24.3 or greater  
  24.4,24.5についても動作を確認しています。
* Ubuntu 14.4 or greater
* Linux Mint 17.1 or greater
* Lubuntu 14.4 or greater

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
init.elを読み込むようにする
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

* Python開発環境について  
 ~/.local/bin にPATHを通す
 * `~/.profile` をエディタで開く  
 * `PATH="$PATH:~/.local/bin"` を最終行に追加  
 * `source ~/.profile` を実行することで即時反映させる
