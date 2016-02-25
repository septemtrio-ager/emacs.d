;;
;;; graphviz-dot-mode.elの設定
;;

(el-get-bundle graphviz-dot-mode)
(use-package graphviz-dot-mode
  :defer t
  :init
  (add-hook 'graphviz-dot-mode-hook
	    (lambda ()
	      (electric-pair-mode t)))
  :config
  (setq graphviz-dot-auto-indent-on-semi nil)
  ;; (setq graphviz-dot-auto-indent-on-braces t)
  )
