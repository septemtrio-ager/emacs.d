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

(el-get-bundle magit)

(use-package magit
  ;; :defer t
  
  :bind ("C-x m" . magit-status)
  
  :config
  
  ;; ステージしてないファイルが存在する場合は再びmagit-statusバッファを開くようにする
  (defadvice with-editor-finish (around Y/go-back-to-magit-status activate)
    "Go back ‘magit-status’ if there are other un-staged things."
    (let ((dir default-directory))
      ad-do-it
      (when (magit-anything-unstaged-p)
	(magit-status-internal dir))))
  
  ;; ウィンドウ分割させないようにする
  ;; (setq magit-display-buffer-function
  ;; 	(lambda (buffer)
  ;; 	  (display-buffer
  ;; 	   buffer (if (and (derived-mode-p 'magit-mode)
  ;; 			   (memq (with-current-buffer buffer major-mode)
  ;; 				 '(magit-process-mode
  ;; 				   magit-revision-mode
  ;; 				   magit-diff-mode
  ;; 				   magit-stash-mode
  ;; 				   magit-status-mode)))
  ;; 		      nil
  ;; 		    '(display-buffer-same-window)))))
  
  ;; ウィンドウを分割させないようにする
  ;; 2016-02-29現在で利用しているmagitのバージョンならこっちで対応可能
  ;; (setq magit-status-buffer-switch-function 'switch-to-buffer)
  
  ;; magit-commit時にdiffが開かないようにする
  ;; C-c C-dすればdiffを見ることができる
  (remove-hook 'server-switch-hook 'magit-commit-diff)
  
  )
