;;
;;; projectile.elの設定
;;

(el-get-bundle projectile

  ;; (projectile-global-mode)
  ;; (setq projectile-completion-system 'helm)
  ;; (helm-projectile-on)
  
  )

(el-get-bundle projectile)

(use-package projectile
  :disabled t
  
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on)
  )
