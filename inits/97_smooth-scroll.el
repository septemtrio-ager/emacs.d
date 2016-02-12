;;
;;; smooth-scroll.elの設定
;;

;; ===================================================================

;; 【参考】Emacsのスクロールが滑らかになって気持ちいい！
;; http://qiita.com/ShingoFukuyama/items/429199542c38625c5554

;; ===================================================================

(el-get-bundle smooth-scroll)

(use-package smooth-scroll
  :defer t
  :config
  (smooth-scroll-mode t))
