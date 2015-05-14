;;
;;; flycheck.elの設定
;;

;; ===================================================================

;; 【参考】Flycheckでモダンなシンタックスチェック
;; http://qiita.com/senda-akiha/items/cddb02cfdbc0c8c7bc2b

;; ===================================================================

(el-get-bundle flycheck

  (require 'flycheck)
  (add-hook 'after-init-hook #'global-flycheck-mode)

  ;;(add-hook 'c-mode-hook
  ;;          (lambda () (flycheck-mode t)))
  ;;(add-hook 'java-mode-hook
  ;;          (lambda () (flycheck-mode t)))
  )
