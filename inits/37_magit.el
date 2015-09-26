;;
;;; magit.elの設定
;;

;; ===================================================================

;; 【参考】EmacsのGitクライアント：Magit
;; http://qiita.com/takc923/items/c7a11ff30caedc4c5ba7

;; ===================================================================

;; ===================================================================

;; 【参考】magit.el を試してみた
;; http://gom.hatenablog.com/entry/20090524/1243170341

;; ===================================================================

;; ===================================================================

;; 【参考】ぼくの.emacs 2013
;; http://qiita.com/tadsan/items/c4a80f46623ea266f5c5

;; ===================================================================

(el-get-bundle magit
  
  (autoload 'magit "magit" nil t)

  ;; (setq magit-last-seen-setup-instructions "1.4.0")

  ;; (eval-after-load 'magit
  ;;   '(progn
  ;;      (set-face-foreground 'magit-diff-add "green3")
  ;;      (set-face-foreground 'magit-diff-del "red3")
  ;;      (when (not window-system)
  ;; 	 (set-face-background 'magit-item-highlight "white"))))
  
  )
