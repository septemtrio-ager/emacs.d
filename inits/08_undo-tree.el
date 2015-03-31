;;
;;; undo-tree.el設定
;;

;; ===================================================================

;; 【参考】undo-tree.el の導入
;; http://d.hatena.ne.jp/khiker/20100123/undo_tree

;; ===================================================================

(el-get-bundle undo-tree
  
  (require 'undo-tree)
  (global-undo-tree-mode t)
  )
