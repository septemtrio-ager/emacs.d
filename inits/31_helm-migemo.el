;;
;;; helm-migemo.elの設定
;;

;; ===================================================================

;; helmで正しくMigemoを動作させる！
;; http://rubikitch.com/2014/12/19/helm-migemo/

;; ===================================================================

(el-get-bundle emacs-jp/helm-migemo)

(use-package helm-migemo
  :disabled t
  :defer t
  :commands helm-compile-source--candidates-in-buffer
  :config
  (defun helm-compile-source--candidates-in-buffer (source)
    (helm-aif (assoc 'candidates-in-buffer source)
	(append source
		`((candidates
		   . ,(or (cdr it)
			  (lambda ()
			    ;; Do not use `source' because other plugins
			    ;; (such as helm-migemo) may change it
			    (helm-candidates-in-buffer (helm-get-current-source)))))
		  (volatile) (match identity)))
      source)))
