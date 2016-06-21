;;
;;; eval-repl.elの設定
;;

;; ===================================================================

;; 【参考】ESS+R使いがClojureで遊びたくて作ったeval-in-repl.el 
;; http://qiita.com/kaz-yos/items/3cf663d67f69d3cc2fc2

;; ===================================================================

(el-get-bundle shunk031/eval-in-repl)

(use-package eval-in-repl-python
  :commands eir-eval-in-python)

(add-hook 'python-mode-hook
          '(lambda ()
             (local-set-key (kbd "<C-return>") 'eir-eval-in-python)))
