;;
;;; geeknote.elの設定
;;

(el-get-bundle geeknote)

(use-package geeknote
  :defer t
  :bind (("C-c g c" . geeknote-create)
	 ("C-c g e" . geeknote-edit)
	 ("C-c g f" . geeknote-find)
	 ("C-c g s" . geeknote-show)
	 ("C-c g r" . geeknote-remove)
	 ("C-c g m" . geeknote-move)))
