;;
;;;; rainbow-mode.elの設定
;;

;; ===================================================================

;; 【参考】Emacsで #f95327 などの文字列に色を付けておく
;; http://qiita.com/ironsand/items/cf8c582da3ec20715677

;; ===================================================================

(el-get-bundle rainbow-mode
  
  (require 'rainbow-mode)

  (dolist (hook '(
		  
		  ;; css-modeで利用する
		  css-mode-hook

		  ;;scss-modeで利用する
		  scss-mode-hook

		  ;; php-modeで利用する
		  php-mode-hook

		  ;; html-modeで利用する
		  html-mode-hook

		  ;; emacs-lisp-modeで利用する
		  emacs-lisp-mode-hook

		  ;; nxml-modeで利用する
		  nxml-mode-hook
		  
		  ))
    (add-hook hook 'rainbow-mode))
  
  )
