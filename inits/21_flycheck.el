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
  
  ;; =================================================================

  ;; 【参考】flycheck — how to disable warnning while edit emacs lisp scripts?
  ;; http://stackoverflow.com/questions/15552349/flycheck-how-to-disable-warnning-while-edit-emacs-lisp-scripts

  ;; =================================================================

  ;; Emacs Lispファイルの先頭で出る警告
  ;; 「The first line should be of the form ...」
  ;; のようなものを表示させないようにする。
  
  (with-eval-after-load 'flycheck
    (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
  
  )
