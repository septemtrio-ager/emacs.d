;;
;;; recentf-ext.elの設定
;;

;; ===================================================================

;; 【参考】Emacsを快適に使うファイル周りの設定紹介
;; http://qiita.com/catatsuy/items/f9fad90fa1352a4d3161

;; ===================================================================

(el-get-bundle recentf-ext

  (require 'recentf-ext)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1)

  (add-hook 'after-init-hook
	    (lambda()
	      (recentf-open-files)
	      ))

  ;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)
  
  )
