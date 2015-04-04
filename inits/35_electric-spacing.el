;;
;;; electric-spacing.elの設定
;;

;; ===================================================================

;; 【参考】emacs electric-spacing.el :
;;                       演算子(=や+=)の前後に自動でスペースを入れる
;; http://rubikitch.com/2015/03/24/electric-spacing/

;; ===================================================================

(el-get-bundle electric-spacing
  
  (require 'electric-spacing)

  ;; c-modeで利用する
  (add-hook 'c-mode-hook 'electric-spacing-mode)

  ;; c++-modeで利用する
  (add-hook 'c++-mode-hook 'electric-spacing-mode)

  ;; java-modeで利用する
  (add-hook 'java-mode-hook 'electric-spacing-mode)

  ;; python-modeで利用する
  (add-hook 'python-mode-hook 'electric-spacing-mode)
  
  ;; arduino-modeで利用する
  ;; 使いたかったけど対応してなかった
 (add-hook 'arduino-mode-hook 'electric-spacing-mode)
  )
