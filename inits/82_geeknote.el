;;
;;; geeknote.elの設定
;;

;; (el-get-bundle geeknote

;;   (autoload 'geeknote "geeknote" nil t)

;;   ;; (setq geeknote-command "python ~/geeknote/geeknote/geeknote.py")
  
;;   (global-set-key (kbd "C-c g c") 'geeknote-create)
;;   (global-set-key (kbd "C-c g e") 'geeknote-edit)
;;   (global-set-key (kbd "C-c g f") 'geeknote-find)
;;   (global-set-key (kbd "C-c g s") 'geeknote-show)
;;   (global-set-key (kbd "C-c g r") 'geeknote-remove)
;;   (global-set-key (kbd "C-c g m") 'geeknote-move)
  
;;   )

(el-get-bundle geeknote)

(use-package geeknote
  :defer t
  :bind (("C-c g c" . geeknote-create)
	 ("C-c g e" . geeknote-edit)
	 ("C-c g f" . geeknote-find)
	 ("C-c g s" . geeknote-show)
	 ("C-c g r" . geeknote-remove)
	 ("C-c g m" . geeknote-move))
  )
