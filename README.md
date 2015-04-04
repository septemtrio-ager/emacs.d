# This is my Emacs dot files

## Directory configuration

メモ
http://www.clear-code.com/blog/2012/3/20.html

.emacs.d  
|  
|----init.el  
|  
|----auto-install  
|  
|----elpa  
|  
|----site-lisp  
|  
|----el-get  
|  
|----backups  
|  
|----inits  
|  
|----mysnippets  

## .emacs
init.elを読みに行くようにする
'(load (expand-file-name (concat (getenv "HOME") "/.emacs.d/init")))'

