;;
;;; anzu.elの設定
;;

;; ===================================================================

;; 【参考】anzu.elの紹介
;; http://qiita.com/syohex/items/56cf3b7f7d9943f7a7ba

;; ===================================================================

(el-get-bundle anzu
  
  (require 'anzu)
  (global-anzu-mode +1)

  (set-face-attribute 'anzu-mode-line nil
		      :foreground "yellow" :weight 'bold)

  (custom-set-variables
   '(anzu-mode-lighter "")
   '(anzu-deactivate-region t)
   '(anzu-search-threshold 1000)
   '(anzu-replace-to-string-separator " => "))
  )
