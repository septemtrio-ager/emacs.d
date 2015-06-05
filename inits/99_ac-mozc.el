;;
;;;
;;

(el-get-bundle ac-mozc

  (require 'ac-mozc)
  (define-key ac-mode-map (kbd "C-t") 'ac-complete-mozc)
  
  )
