;;
;;; centered-cursor-mode.elの設定
;;

;; ===================================================================

;; 【参考】カーソル移動・スクロール時に常に画面中央行(任意可)を
;;                                            キープして表示させる
;; http://rubikitch.com/2015/04/23/centered-cursor-mode/

;; ===================================================================

(el-get-bundle centered-cursor-mode

  (require 'centered-cursor-mode)
  (global-centered-cursor-mode 1)
  
  )

