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
  (dolist
      (hook
       '(

	 ;; ess-modeで利用するようにする
	 ess-mode-hook

	 ;; markdown-modeで利用する
	 markdown-mode-hook
	 
	 ;; gfm-modeで利用するようにする
	 gfm-mode-hook
		  
	 ))
    (add-hook hook
	      (lambda ()
		(smart-newline-mode 1))))

  )
