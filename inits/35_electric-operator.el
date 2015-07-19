;;
;;; electric-operator.elの設定
;;

;; ===================================================================

;; 【参考】【改良版】演算子(=や+=)の前後に自動でスペースを入れる
;; http://rubikitch.com/2015/07/19/electric-operator/

;; ===================================================================

(el-get-bundle electric-operator

  (require 'electric-operator)

  ;; c-modeで利用する
  (add-hook 'c-mode-hook #'electric-operator-mode)

  ;; c++-modeで利用する
  (add-hook 'c++-mode-hook #'electric-operator-mode)

  ;; java-modeで利用する
  (add-hook 'java-mode-hook #'electric-operator-mode)

  ;; python-modeで利用する
  (add-hook 'python-mode-hook #'electric-operator-mode)
  
  )
