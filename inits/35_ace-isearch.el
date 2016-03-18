;;
;;; ace-isearch.elの設定
;;

(el-get-bundle ace-isearch)

(use-package ace-isearch
  :defer t
  
  :commands isearch-forward-or-helm-swoop 
  
  :bind ("C-s" . isearch-forward-or-helm-swoop)
  
  :init
  (global-ace-isearch-mode 1)
  
  (bind-key "C-h" 'isearch-del-char isearch-mode-map)
    
  :config
  ;; isearch中に一定文字以上になったらhelm-swoopを呼び出す
  (defun isearch-forward-or-helm-swoop (use-helm-swoop)
    (interactive "p")
    (let (current-prefix-arg
	  (helm-swoop-pre-input-function 'ignore))
      (call-interactively
       (case use-helm-swoop
	 (1 'isearch-forward)
	 (4 'helm-swoop)
	 (16 'helm-swoop-nomigemo))))))
