;;
;;; uniquify.elの設定
;;

;; ===================================================================

;; 【参考】同名のファイルのバッファ名にディレクトリ名を追加するuniquify.el
;; http://d.hatena.ne.jp/yuheiomori0718/20111214/1323864339

;; ===================================================================

(use-package uniquify
  :defer t
  :config
  ;; filename<dir> 形式のバッファ名にする
  (setq uniquify-buffer-name-style 'post-forward-angle-brackets))
