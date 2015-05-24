;;
;;; 指定したマイナーモードを表示しないようにする
;;

;; =========================================================

;; 【参考】指定したマイナーモードを表示しない
;; http://qiita.com/tadsan/items/8b5976682b955788c262

;; ==========================================================

(setq my/hidden-minor-modes
      ;; 表示させないマイナーモード
      '(undo-tree-mode
	helm-mode
	auto-complete-mode
	smooth-scroll-mode
	magit-auto-revert-mode
	rainbow-mode
	auto-highlight-symbol-mode
	smart-newline-mode
	volatile-highlights-mode
	smartparens-mode
	))

(mapc (lambda (mode)
	(setq minor-mode-alist
	      (cons (list mode "") (assq-delete-all mode minor-mode-alist))))
      my/hidden-minor-modes)
