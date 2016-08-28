;;
;; setting for expand-region.el
;; https://github.com/magnars/expand-region.el

;; ===================================================================

;; 【参考】Emacsで選択範囲をインタラクティブに広げる expand-region
;; http://qiita.com/ongaeshi/items/abd1016bf484c4e05ab1

;; ===================================================================

(el-get-bundle expand-region)

(use-package expand-region
  :defer t
  :bind (("C-@" . er/expand-region)
	 ("C-M-@" . er/contract-region)))
