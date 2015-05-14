;;
;;;
;;

(el-get-bundle ac-mozc

  (require 'ac-mozc)
  (define-key ac-mode-map (kbd "C-c C-SPC") 'ac-complete-mozc)
  
  )
