;;
;;; ac-mozc.elの設定
;;

(el-get-bundle ac-mozc

  (require 'ac-mozc)
  (define-key ac-mode-map (kbd "C-j") 'ac-complete-mozc)
  
  )
