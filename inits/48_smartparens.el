;;
;;; smartparens.elの設定
;;

(el-get-bundle smartparens)

(use-package smartparens
  :disabled t
  
  :defer t
  
  :init
  (smartparens-global-mode t)
  
  :config
  ;; 括弧の定義
  (sp-pair "<#" "#>")
  )
