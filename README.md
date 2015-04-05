# This is my Emacs dot files

## Directory configuration

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
`(load (expand-file-name (concat (getenv "HOME") "/.emacs.d/init")))`

## Installation

~~~~
$ git clone https://github.com/septemtrio-ager/emacs.d.git ~/.emacs.d
$ cd ~/.emacs.d
$ ./tool-setpu.sh
$ emacs
~~~~
