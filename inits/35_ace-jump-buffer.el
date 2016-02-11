;;
;;; ace-jump-buffer.el
;;

;; (el-get-bundle ace-jump-buffer

;;   (require 'ace-jump-buffer)
;;   (global-set-key (kbd "C-:") 'ace-jump-buffer)
  
;;   )


(el-get-bundle ace-jump-buffer)

(use-package ace-jump-buffer
  :bind ("C-:" . ace-jump-buffer)
  )
