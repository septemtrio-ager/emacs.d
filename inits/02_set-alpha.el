;;
;;; set-alpha.elの設定
;;

;; ===================================================================

;; 【参考】emacs の透明度を変更する elisp
;; http://qiita.com/marcy_o/items/ba0d018a03381a964f24

;; ===================================================================

(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha:")
  (set-frame-parameter nil 'alpha (cons alpha-num '(80))))
