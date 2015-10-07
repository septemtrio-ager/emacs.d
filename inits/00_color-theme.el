;;
;;; color themeの設定
;;

(el-get-bundle monokai-theme

  ;; tango-darkテーマ(デフォルト)
  (load-theme 'tango-dark t)
  
  ;; monokaiテーマ
  ;; (load-theme 'monokai t)
  
  ;; ウィンドウの透過度を変更する
  (if window-system
      (progn
	(set-background-color "Black")
	(set-foreground-color "LightGray")
	(set-frame-parameter nil 'alpha 80)
	))
  
  ;; カーソルの色を変更する
  (set-cursor-color "yellow")
  
  )
