;;
;;; popwin.elの設定
;;

;; ===================================================================

;; 【参考】ヘルプバッファや補完バッファを
;;         ポップアップで表示してくれるpopwin.elをリリースしました
;; http://d.hatena.ne.jp/m2ym/20110120/1295524932

;; ===================================================================

;; (el-get-bundle popwin
  
;;   (require 'popwin)
    
;;   (popwin-mode 1)
    
;;   ;; *quickrun* バッファをポップアップ表示させる
;;   (push '("*quickrun*") popwin:special-display-config)


;;   ;; *anything* バッファをポップアップ表示させる
;;   ;; (setq anything-samewindow nil)
;;   ;; (push '("*anything*" :height 25) popwin:special-display-config)


;;   ;; *anything for files* バッファをポップアップ表示させる
;;   ;; ポップアップさせるウィンドウの大きさを変更
;;   (push '("*anything for files*" :height 25) popwin:special-display-config)


;;   ;; =================================================================
  
;;   ;; 【参考】AnythingからHelmに移行しました
;;   ;; http://sleepboy-zzz.blogspot.jp/2012/09/anythinghelm.html

;;   ;; =================================================================
  
;;   ;; *helm* バッファをポップアップ表示させる
;;   (setq helm-samewindow nil)
;;   (push '("^\*helm .+\*$" :regexp t :height 25) popwin:special-display-config)


;;   ;; direx-mode バッファをポップアップ表示させる
;;   (push '(direx:direx-mode :position left :width 40 :dedicated t) popwin:special-display-config)
  

;;   ;; magitの COMMIT_EDITMSG バッファをポップアップ表示させる
;;   (push '("COMMIT_EDITMSG" :height 0.3) popwin:special-display-config)
  
  
;;   ;; recentf-extの *Open Recent* バッファをポップアップ表示させる
;;   (push '("*Open Recent*" :height 25) popwin:special-display-config)
  
  
;;   ;; undo-treeの *undo-tree* バッファをポップアップ表示させる
;;   (push '("*undo-tree*" :width 0.3 :position right) popwin:special-display-config)

  
;;   ;; (require 'popwin-yatex) するとエラーが出るから、
;;   ;; popwin-yatexのコードをここに転記した
;;   (defadvice YaTeX-showup-buffer (around popwin-yatex:YaTeX-showup-buffer (buffer &optional func select) activate)
;;     (popwin:display-buffer-1 buffer
;;   			     :default-config-keywords `(:noselect ,(not select))
;;   			     :if-config-not-found (lambda (buffer) ad-do-it)))

;;   ;; yatex-modeの *dvi-preview* バッファをポップアップ表示させる
;;   (push '("*dvi-preview*" :height 10) popwin:special-display-config)

;;   ;; yatex-modeの *YaTeX-typesetting* バッファをポップアップ表示させる
;;   (push '("*YaTeX-typesetting*") popwin:special-display-config)
  
;;   )

(el-get-bundle popwin)

(use-package popwin
  :config
  (popwin-mode 1)

  ;; *quickrun* バッファをポップアップ表示させる
  (push '("*quickrun*") popwin:special-display-config)

  ;; *helm* バッファをポップアップ表示させる
  (setq helm-samewindow nil)
  (push '("^\*helm .+\*$" :regexp t :height 25) popwin:special-display-config)

  ;; direx-mode バッファをポップアップ表示させる
  (push '(direx:direx-mode :position left :width 40 :dedicated t) popwin:special-display-config)

  ;; magitの COMMIT_EDITMSG バッファをポップアップ表示させる
  (push '("COMMIT_EDITMSG" :height 0.3) popwin:special-display-config)

  ;; recentf-extの *Open Recent* バッファをポップアップ表示させる
  (push '("*Open Recent*" :height 25) popwin:special-display-config)

  ;; undo-treeの *undo-tree* バッファをポップアップ表示させる
  (push '("*undo-tree*" :width 0.3 :position right) popwin:special-display-config)

  ;; (require 'popwin-yatex) するとエラーが出るから、
  ;; popwin-yatexのコードをここに転記した
  (defadvice YaTeX-showup-buffer (around popwin-yatex:YaTeX-showup-buffer (buffer &optional func select) activate)
    (popwin:display-buffer-1 buffer
  			     :default-config-keywords `(:noselect ,(not select))
  			     :if-config-not-found (lambda (buffer) ad-do-it)))

  ;; yatex-modeの *dvi-preview* バッファをポップアップ表示させる
  (push '("*dvi-preview*" :height 10) popwin:special-display-config)

  ;; yatex-modeの *YaTeX-typesetting* バッファをポップアップ表示させる
  (push '("*YaTeX-typesetting*") popwin:special-display-config)
  )
