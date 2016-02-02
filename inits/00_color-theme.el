;;
;;; color themeの設定
;;

;; (el-get-bundle monokai-theme
  
;;   ;; monokaiテーマ
;;   ;; (load-theme 'monokai t)
  
;;   )

;; (el-get-bundle color-theme-solarized
;;     ;; (load-theme 'solarized t)
;;   )

;; tango-darkテーマ(デフォルト)
(load-theme 'tango-dark t)



;; ウィンドウの透過度を変更する
(if window-system
    (progn
      (set-background-color "Black")
      (set-foreground-color "LightGray")
      (set-frame-parameter nil 'alpha 80)
      ))



;; カーソルの色を変更する
(set-cursor-color "yellow")



;; fringeの設定
;; (ウィンドウ左右にある余白)

;; 左だけfringeを表示させるようにする
(fringe-mode '(7 . 1))

;; 色の変更
(set-face-background 'fringe "gray10")
;; (set-face-attribute 'fringe nil :background "gold3" :foreground "#3F3F3F")
