;;
;;; point-undo.elの設定
;;

(el-get-bundle point-undo)

(use-package point-undo
  :config
  (bind-key "<f7>" 'point-undo)
  (bind-key "S-<f7>" 'point-redo))
