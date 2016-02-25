;;
;;; electric-operator.elの設定
;;

;; ===================================================================

;; 【参考】【改良版】演算子(=や+=)の前後に自動でスペースを入れる
;; http://rubikitch.com/2015/07/19/electric-operator/

;; ===================================================================

(el-get-bundle electric-operator)
(use-package electric-operator
  :defer t
  
  :init
  (dolist (hook '(

		  ;;c系modeで利用する
		  c-mode-common-hook

		  ;; python-modeで利用する
		  python-mode-hook

		  ;; ess-modeで利用する
		  ess-mode-hook
		  
		  ))
    (add-hook hook #'electric-operator-mode))
  
  :config
  
  ;; ジェネリクス型を利用する際に無駄なスペースが入ってしまうために
  ;; java-modeでは"<"と">"において動作しないようにした
  (electric-operator-add-rules-for-mode
   'java-mode
   (cons "<" nil)
   (cons ">" nil))

  (electric-operator-add-rules-for-mode
   'php-mode
   (cons "/" nil)
   (cons "<" nil)
   (cons ">" nil)
   (cons "++" "++")
   (cons "//" "// ")
   (cons "." nil)
   (cons "->" "->")
   (cons "=>" " => "))
  
  )
