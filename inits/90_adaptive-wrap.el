;;
;;; adaptive-wrap.elの設定
;;

;; ===================================================================

;; 【参考】Emacsの折り返しの挙動
;; http://alainmathematics.blogspot.jp/2013/07/emacs.html

;; ===================================================================

(el-get-bundle adaptive-wrap
  
  ;; 折り返したあと、次の行にインデントされた状態にする
  ;; M-x adaptive-wrap-prefix-mode
  ;; で使うことができる

  ;; 利用するモードにhookしておく
  (dolist
      (hook
	   '(

	     ;; c系modeで利用する
	     c-mode-common-hook

	     ;; python-modeで利用する
	     python-mode-hook

	     ;; web-modeで利用する
	     web-mode-hook

	     ;; emacs-lisp-modeで利用する
	     emacs-lisp-mode-hook
	     
	     ))
    (add-hook hook 'adaptive-wrap-prefix-mode))
  
  )
