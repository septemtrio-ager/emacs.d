;;
;; setting for ediff.el
;; 

;; ===================================================================

;; 【参考】Emacs のファイル差分表示(ediff, diff)機能の使い方
;; http://yohshiy.blog.fc2.com/blog-entry-231.html

;; ===================================================================

;; 操作方法

;; p : 前の差分位置に戻る
;; n : 次の差分位置に移動

(use-package ediff
  :defer t
  :config
  ;; コントロール用のバッファを同一フレーム内に表示
  (setq ediff-window-setup-function 'ediff-setup-windows-plain)

  ;; diffのバッファを上下ではなく左右に並べる
  (setq ediff-split-window-function 'split-window-horizontally))
