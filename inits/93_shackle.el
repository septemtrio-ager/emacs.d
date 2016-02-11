;;
;;; shackle.elの設定
;;

;; ===================================================================

;; 【参考】【シンプルなpopwin】ウィンドウの表示方法を柔軟にカスタマイズ！
;; http://rubikitch.com/2015/03/10/shackle/

;; ===================================================================

;; (el-get-bundle shackle

;;   (require 'shackle)
;;   (setq shackle-rules
;; 	'(
	  
;; 	  ;; *helm* バッファをポップアップ表示させる
;; 	  ("^\*helm .+\*$" :regexp t :align below :radio 0.4)
	  
;; 	  ))
;;   (shackle-mode 1)
;;   (setq shackle-lighter "")

;;   ;; C-zで直前のウィンドウ構成に戻す
;;   (winner-mode 1)
;;   (global-set-key (kbd "C-z") 'winner-undo)
  
;;   )
