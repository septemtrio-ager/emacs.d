# This is my Emacs dot files

## Requirements
* Emacs 24.3 or greater  
  24.4，24.5についても動作を確認しています。
* Ubuntu 14.04 or greater
* Linux Mint 17.01 or greater
* Lubuntu 14.04 or greater

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
* Octave
* Twitter

## Directory Configuration

~~~~
emacs.d
│
├── init.el       # 初期設定ファイル。初回起動時にel-getが自動でインストールされる
│
├── tool-setup.sh # Emacsと連携しているソフトウェアをインストールするためのスクリプト
│
├── el-get.lock   # El-getでインストールしたパッケージのバージョンを固定するためのファイル
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

### CapsLockキーをCtrlキーに変更する  
【参考】Caps LockキーをCtrlキーにする(Ubuntu)  
http://l-w-i.net/t/ubuntu/key_001.txt

### fcitx-mozcとのキーバインド衝突を回避する  
ac-mozcの変換に利用する`C-j`がfcitx-mozcの入力メソッドの  
オンオフ切り替えと衝突してしまうため変更する。
 1. Fcitx設定の"全体の設定"
 2. 入力メソッドのオンオフ"Ctrl+Space"を他のキーに割り当てる

### フォントについて  
【参考】プログラミング用フォント Ricty  
 https://github.com/yascentur/Ricty
 1. `Inconsolata.otf, Migu 1M(migu-1m-bold.ttf, migu-1m-regular.ttf)`をダウンロードし、同じディレクトリに置く
 2. githubからRictyをダウンロードし、`ricty_generator.sh`を1と同様のディレクトリに置く
 3. `$ ./ricty_generator.sh auto`を実行してRictyフォントを生成
 4. 以下のコマンドを実行してフォントをインストール
 
 ~~~~
 $ mkdir -p ~/.fonts
 $ cp -f Ricty*.ttf ~/.fonts/
 $ fc-cache -vf
 ~~~~


### Python開発環境について  
 ~/.local/bin にPATHを通す
 1. `~/.profile` をエディタで開く  
 2. `PATH="$PATH:~/.local/bin"` を最終行に追加  
 3. `source ~/.profile` を実行することで即時反映させる
 4. 反映されたかどうかを確認する場合は`echo $PATH`で確認できる

### R開発環境について
 * 最新版のRをインストールする  
 【参考】UbuntuにRをインストールするための手順  
 http://www.trifields.jp/install-r-in-ubuntu-1000  
 Linux Mint 17.1 RebeccaについてはUbuntu 14.04 Trustyをベースにしているため, DISTRIB_CODENAME=trusty と読み替えること.

 * lintrの導入  
 flycheckのSyntaxCheckerであるlintrパッケージをインストール  
    1. Rを起動して以下のコマンドを入力  
	
	~~~~
	> options(CRAN = "http://cran.ism.ac.jp/")
	> options(repos = "http://cran.ism.ac.jp/")
	~~~~
	
    2. lintrをパッケージ指定してインストール  
	~~~~
	> install.packages("lintr", dep=T)
	~~~~

### GithubのREADME.mdをプレビューする  
【参考】EmacsでGithub flavorなMarkdownをプレビュー確認したい  
 http://blog.shinofara.xyz/archives/354/  
 1. "markdown"というbinファイルを作成する
 

 `$ gedit /bin/markdown`
 ~~~~ 
 #!/bin/sh
 filename=$1
 /usr/local/bin/grip --export ${filename} > /dev/null
 cat ${filename%.*}.html
 ~~~~
 
 2. 管理者権限にてファイラーを起動
 3. `/bin/markdownのプロパティ`→`パーミッションのプログラムとして実行可能`にチェックを入れる

### CSS Lintをインストールする
tool-setup.shを実行することで`node.js`・`npm`・`csslint`をインストールすることができる.
~~~~
/usr/bin/env: node: そのようなファイルやディレクトリはありません
~~~~
のようなエラーが出た場合は
~~~~
$ ln -s /usr/bin/nodejs /usr/bin/node
~~~~
することで解決する.

### BrowserSyncについて
【参考】Browsersyncを利用してお手軽ブラウザ確認環境をつくろう  
http://tech.medpeer.co.jp/entry/2015/06/09/071758  
Browsersyncはファイル変更を監視し、自動でブラウザリロードを行ってくれるツールである.  
 1. ターミナルから作業ディレクトリ(HTMLやCSSのあるディレクトリ)に移動  
 2. 以下のコマンドを実行  
~~~~
$ browser-sync start --server --files "**/*"
~~~~
