;;
;; setting for point-undo.el
;; https://www.emacswiki.org/emacs/point-undo.el

(el-get-bundle point-undo)

(use-package point-undo
  :config
  (bind-key "<f7>" 'point-undo)
  (bind-key "S-<f7>" 'point-redo))
