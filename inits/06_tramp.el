;;
;;; tramp.elの設定
;;

;; ===================================================================

;; 【参考】trampでリモートサーバのファイルをSSH経由で編集
;; http://qiita.com/muyuu/items/63a82c819bbbe65d37a2

;; ===================================================================

(el-get-bundle tramp

  (require 'tramp)
  (setq tramp-default-method "ssh")
  ;; (setq tramp-default-method "plink")  
  
  )
