;;
;;; polymode.elの設定
;;

;; ===================================================================

;; 【参考】Emacs で knitr と R markdown を使う方法 (Rmd)
;; http://futurismo.biz/archives/2982

;; ===================================================================

(el-get-bundle polymode)

(use-package polymode
  :defer t
  :mode (
	 ;; ("\\.md" . poly-markdown-mode)
	 ("\\.Snw" . poly-noweb+r-mode)
	 ("\\.Rnw" . poly-noweb+r-mode)
	 ("\\.Rmd" . poly-markdown+r-mode)))
