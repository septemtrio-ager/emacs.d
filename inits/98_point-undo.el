;;
;;; point-undo.elの設定
;;

(el-get-bundle point-undo)

(use-package point-undo
  :bind (("<f7>" . point-undo)
	 ("S-<f7>" . point-redo))
)
