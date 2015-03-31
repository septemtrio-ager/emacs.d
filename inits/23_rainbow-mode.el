;;
;;;; rainbow-mode.elの設定
;;

;; ===================================================================

;; 【参考】Emacsで #f95327 などの文字列に色を付けておく
;; http://qiita.com/ironsand/items/cf8c582da3ec20715677

;; ===================================================================

(el-get-bundle rainbow-mode
  
  (require 'rainbow-mode)

  ;; css-modeで利用する
  (add-hook 'css-mode-hook 'rainbow-mode)

  ;; scss-modeで利用する
  (add-hook 'scss-mode-hook 'rainbow-mode)

  ;; php-modeで利用する
  (add-hook 'php-mode-hook 'rainbow-mode)

  ;; html-modeで利用する
  (add-hook 'html-mode-hook 'rainbow-mode)

  ;; emacs-lisp-modeで利用する
  (add-hook 'emacs-lisp-mode-hook 'rainbow-mode)
  )
