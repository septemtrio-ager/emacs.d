;;
;;; imenu-anywhere.elの設定
;;

;; ===================================================================

;; 【参考】簡易関数定義ジャンプimenuをido/helm化した上で
;;                                          他のファイルまで拡張する！
;; http://rubikitch.com/2014/12/17/imenu-anywhere/

;; ===================================================================

(el-get-bundle imenu-anywhere

  (global-set-key (kbd "C-.") 'helm-imenu-anywhere)
  
  )
