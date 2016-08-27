;;
;; setting for hlinum.el
;; https://github.com/tom-tan/hlinum-mode

;; ===================================================================

;; 【参考】Emacs の現在の行番号をハイライトさせる hlinum.el を作りました．
;; http://d.hatena.ne.jp/tm_tn/20110605/1307238416

;; ===================================================================

(el-get-bundle tom-tan/hlinum-mode)

(use-package hlinum
  :config
  ;; これがないと表示されない
  (hlinum-activate)

  (custom-set-faces
   '(linum-highlight-face((t (:foreground "black"
					  :background "#F1266F"))))))
