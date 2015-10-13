;;
;;; highlight-symbol.elの設定
;;

;; ===================================================================

;; 【参考】シンボルを自動・手動ハイライト、移動、置換、マッチ数表示
;; http://rubikitch.com/2015/10/07/highlight-symbol/

;; ===================================================================

(el-get-bundle highlight-symbol

  ;; 1秒後自動ハイライトされるようになる
  (setq highlight-symbol-idle-delay 1.0)
  
  ;; 自動ハイライトするmodeを設定
  (dolist (hook '(
		  
		  ;; プログラミング言語modeに適応
		  prog-mode-hook
		  
		  nxml-mode-hook
		  
		  ))
    (add-hook hook 'highlight-symbol-mode))
  
  ;; ソースコードにおいてM-p/M-nでシンボル間を移動できるようにする
  (dolist (hook '(
		  
		  ;; プログラミング言語modeに適応
		  prog-mode-hook
		  
		  nxml-mode-hook
		  
		  ))
    (add-hook hook 'highlight-symbol-nav-mode))
  
  ;; シンボル置換できるようにする
  (global-set-key (kbd "M-s M-r") 'highlight-symbol-query-replace)
  
  )
