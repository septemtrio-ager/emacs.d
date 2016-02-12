;;
;;; auto-highlight-symbol.elの設定
;;

;; ===================================================================

;; 【参考】emacsで変数を自動ハイライト
;; http://hiroki.jp/2011/01/25/1561/

;; ===================================================================


(el-get-bundle auto-highlight-symbol)

(use-package auto-highlight-symbol
  :disabled t
  :defer t
  
  :config
  ;; C-x C-a で、ハイライトしている変数を一括でリネームできる
  (global-auto-highlight-symbol-mode t)

  ;; バッファ全体をハイライトの対象として、変数の一括変更ができるようにする
  (custom-set-variables '(ahs-default-range (quote ahs-range-whole-buffer))))
