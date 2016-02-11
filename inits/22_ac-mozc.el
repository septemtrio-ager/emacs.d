;;
;;; ac-mozc.elの設定
;;

;; (el-get-bundle ac-mozc

;;   (require 'ac-mozc)
;;   (define-key ac-mode-map (kbd "C-j") 'ac-complete-mozc)
  
;;   )

(el-get-bundle ac-mozc)

(use-package ac-mozc
  :defer t
  :commands ac-complete-mozc
  :init
  (bind-key "C-j" 'ac-complete-mozc ac-mode-map)
  )
