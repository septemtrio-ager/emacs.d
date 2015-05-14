;;
;;; mozc.elの設定
;;

;; ===================================================================

;; 【参考】Emacs:mozcで日本語入力
;; http://compress.hatenadiary.com/entry/2014/02/24/001932

;; ===================================================================

(el-get-bundle mozc

  (require 'mozc)
  (setq default-input-method "japanese-mozc")
  
  )
