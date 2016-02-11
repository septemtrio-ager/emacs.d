;;
;;; ace-isearch.el
;;

(el-get-bundle ace-isearch

  (global-ace-isearch-mode 1)

  (defun isearch-forward-or-helm-swoop (use-helm-swoop)
  (interactive "p")
  (let (current-prefix-arg
        (helm-swoop-pre-input-function 'ignore))
    (call-interactively
     (case use-helm-swoop
       (1 'isearch-forward)
       (4 'helm-swoop)
       (16 'helm-swoop-nomigemo)))))
  (global-set-key (kbd "C-s") 'isearch-forward-or-helm-swoop)
  
  )
