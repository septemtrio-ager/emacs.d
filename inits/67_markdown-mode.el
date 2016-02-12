;;
;;; markdown-mode.elの設定
;;

;; ===================================================================

;; 【参考】EmacsでGithub flavorなMarkdownをプレビュー確認したい
;; http://blog.shinofara.xyz/archives/354/

;; ===================================================================

(el-get-bundle markdown-mode)

(use-package markdown-mode
  
  :mode (("\\.text\\'" . gfm-mode)
	 ("\\.markdown\\'" . gfm-mode)
	 ("\\.md\\'" . gfm-mode))
  
  :config
  ;; ファイルパスを渡す
  (setq markdown-command-needs-filename t))
