;;
;;; auto-highlight-symbol.elの設定
;;

;; ===================================================================

;; 【参考】emacsで変数を自動ハイライト
;; http://hiroki.jp/2011/01/25/1561/

;; ===================================================================

(el-get-bundle auto-highlight-symbol
  :type github :pkgname "emacsmirror/auto-highlight-symbol"
  
  (require 'auto-highlight-symbol)

  ;; C-x C-a で、ハイライトしている変数を一括でリネームできる
  (global-auto-highlight-symbol-mode t)
  )
