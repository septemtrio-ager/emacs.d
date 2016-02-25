;;
;;; recentf-ext.elの設定
;;

;; ===================================================================

;; 【参考】Emacsを快適に使うファイル周りの設定紹介
;; http://qiita.com/catatsuy/items/f9fad90fa1352a4d3161

;; ===================================================================

(el-get-bundle recentf-ext)
(use-package recentf-ext
  :defer t
  :init
  (add-hook 'after-init-hook
	    (lambda()
	      (recentf-open-files)))
  
  :config
  (setq recentf-max-saved-items 100)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1)

  ;; =================================================================

  ;;【参考】recentf のホームディレクトリを "~" に置換
  ;; http://yak-shaver.blogspot.jp/2013/07/recentf.html

  ;; =================================================================
  
  (defadvice recentf-open-files (before recentf-abbrev-file-name-adv activate)
    (recentf-cleanup)
    (let ((directory-abbrev-alist `((,(concat "\\`" (getenv "HOME")) . "~"))))
      (setq recentf-list (mapcar #'(lambda (x) (abbreviate-file-name x)) recentf-list))))

  ;; ================================================================

  ;; 【参考】recentf-ext のディレクトリを色付け
  ;; http://yak-shaver.blogspot.jp/2013/07/recentf-ext.html

  ;; ===============================================================
  
  (defadvice recentf-open-files (after recentf-set-overlay-directory-adv activate)
    (set-buffer "*Open Recent*")
    (save-excursion
      (while (re-search-forward "\\(^  \\[[0-9]\\] \\|^  \\)\\(.*/\\)$" nil t nil)
	(overlay-put (make-overlay (match-beginning 2) (match-end 2))
		     'face `((:foreground ,"#F1266F")))))))
