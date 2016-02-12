;;
;;; projectile.elの設定
;;

(el-get-bundle projectile)

(use-package projectile
  :disabled t
  :defer t
  
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on)
  
  ;; helm-agとProjectileを連携させる
  (defun helm-projectile-ag ()
    "Projectileと連携"
    (interactive)
    (helm-ag (projectile-project-root))))
