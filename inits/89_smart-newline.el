;;
;;; smart-newline.elの設定
;;

;; ===================================================================

;; 【参考】smart-newline.elという拡張
;; http://ainame.hateblo.jp/entry/2013/12/08/162032

;; ===================================================================

(el-get-bundle smart-newline

  ;; keybind.el にて
  
  ;; (global-set-key (kbd "RET") 'smart-newline)
  
  ;; として設定してある

  ;; 個別にモードごとに設定をする
  (add-hook 'ess-mode-hook
  	    (lambda ()
  	      (smart-newline-mode 1)))

  (add-hook 'gfm-mode-hook
  	    (lambda ()
  	      (smart-newline-mode 1)))

  )