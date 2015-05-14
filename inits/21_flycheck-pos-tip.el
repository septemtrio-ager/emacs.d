;;
;;; flycheck-pos-tip.elの設定
;;

;; ===================================================================

;; 【参考】Flycheckでモダンなシンタックスチェック
;; http://qiita.com/senda-akiha/items/cddb02cfdbc0c8c7bc2b

;; ===================================================================

(el-get-bundle flycheck-pos-tip

  (eval-after-load 'flycheck
    '(custom-set-variables
      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))
  )
