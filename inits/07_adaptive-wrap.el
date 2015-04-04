;;
;;; adaptive-wrap.elの設定
;;

;; ===================================================================

;; 【参考】Emacsの折り返しの挙動
;; http://alainmathematics.blogspot.jp/2013/07/emacs.html

;; ===================================================================

(el-get-bundle elpa:adaptive-wrap
  
  ;; M-x package-install adaptive-wrap でインストールする

  ;; 折り返したあと、次の行にインデントされた状態にする
  ;; M-x adaptive-wrap-prefix-mode
  ;; で使うことができる

  ;; 利用するモードにhookしておく

  ;; c-mode
  (add-hook 'c-mode-hook 'adaptive-wrap-prefix-mode)

  ;; c++-mode
  (add-hook 'c++-mode-hook 'adaptive-wrap-prefix-mode)

  ;; java-mode
  (add-hook 'java-mode-hook 'adaptive-wrap-prefix-mode)

  ;; web-mode
  (add-hook 'web-mode-hook 'adaptive-wrap-prefix-mode)

  ;; emacs-lisp-mode
  (add-hook 'emacs-lisp-mode-hook 'adaptive-wrap-prefix-mode)
  )
