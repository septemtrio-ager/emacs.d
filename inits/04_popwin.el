;;
;;; popwin.elの設定
;;

;; ===================================================================

;; 【参考】ヘルプバッファや補完バッファを
;;         ポップアップで表示してくれるpopwin.elをリリースしました
;; http://d.hatena.ne.jp/m2ym/20110120/1295524932

;; ===================================================================

(el-get-bundle popwin
  
  (require 'popwin)
  (setq display-buffer-function 'popwin:display-buffer)


  ;; *quickrun* バッファをポップアップ表示させる
  (push '("*quickrun*") popwin:special-display-config)


  ;; *anything* バッファをポップアップ表示させる
  (setq anything-samewindow nil)
  (push '("*anything*" :height 25) popwin:special-display-config)


  ;; *anything for files* バッファをポップアップ表示させる
  ;; ポップアップさせるウィンドウの大きさを変更
  (push '("*anything for files*" :height 25) popwin:special-display-config)


  ;; *helm* バッファをポップアップ表示させる
  ;; 【参考】AnythingからHelmに移行しました
  ;; http://sleepboy-zzz.blogspot.jp/2012/09/anythinghelm.html
  (setq helm-samewindow nil)
  (push '("^\*helm .+\*$" :regexp t :height 25) popwin:special-display-config)


  ;; direx-mode バッファをポップアップ表示させる
  (push '(direx:direx-mode :position left :width 40 :dedicated t) popwin:special-display-config)
  
  ;; magitの COMMIT_EDITMSG バッファをポップアップ表示させる
  (push '("COMMIT_EDITMSG" :height 0.3) popwin:special-display-config)
  
  )
