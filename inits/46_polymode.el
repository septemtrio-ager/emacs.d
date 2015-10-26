;;
;;; polymode.elの設定
;;

;; ===================================================================

;; 【参考】Emacs で knitr と R markdown を使う方法 (Rmd)
;; http://futurismo.biz/archives/2982

;; ===================================================================

(el-get-bundle polymode

  ;; MARKDOWN
  (add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))

  ;; R modes
  (add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
  (add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
  (add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
  
  )
