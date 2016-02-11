;;
;;; eval-repl.elの設定
;;

;; ===================================================================

;; 【参考】ESS+R使いがClojureで遊びたくて作ったeval-in-repl.el 
;; http://qiita.com/kaz-yos/items/3cf663d67f69d3cc2fc2

;; ===================================================================

;; (el-get-bundle eval-in-repl
  
;;   (require 'eval-in-repl)

;;   ;; python-modeで使う
;;   (require 'eval-in-repl-python)
;;   (define-key python-mode-map (kbd "<C-return>") 'eir-eval-in-python)
;;   )

(el-get-bundle eval-in-repl)

(use-package eval-in-repl
  :commands (eir-eval-in-python)
  :config
  (bind-key "<C-return>" 'eir-eval-in-python python-mode-map)
  )
