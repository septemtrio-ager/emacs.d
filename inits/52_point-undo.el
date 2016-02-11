;;
;;; point-undo.elの設定
;;

(el-get-bundle point-undo)

(require 'point-undo)

;; (define-key global-map [f7] 'point-undo)
;; (define-key global-map [S-f7] 'point-redo)

(global-set-key (kbd "<f7>") 'point-undo)
(global-set-key (kbd "S-<f7>") `point-redo)
