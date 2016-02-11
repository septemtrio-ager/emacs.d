;;
;;; tramp.el
;;

(el-get-bundle tramp)

(use-package tramp
  :defer t
  :config
  (setq tramp-default-method "ssh"))
