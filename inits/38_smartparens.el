;;
;;;
;;

(el-get-bundle smartparens

  (require 'smartparens-config)

  (smartparens-global-mode t)
  
  ;; 括弧の定義
  (sp-pair "<#" "#>")
  
  )
