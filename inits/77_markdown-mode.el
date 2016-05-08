;;
;;; markdown-mode.elの設定
;;

;; ===================================================================

;; 【参考】EmacsでGithub flavorなMarkdownをプレビュー確認したい
;; http://blog.shinofara.xyz/archives/354/

;; ===================================================================

(el-get-bundle markdown-mode)

(use-package markdown-mode
  :init
  (add-hook 'markdown-mode-hook
	    '(lambda ()
	       (electric-indent-local-mode -1)
	       (markdown-custom)))
  :config
  ;; ファイルパスを渡す
  (defun markdown-custom ()
    "markdown mode hook"
    (setq markdown-command-needs-filename t)))

(use-package gfm-mode
  :mode (("\\.text\\'" . gfm-mode)
	 ("\\.markdown\\'" . gfm-mode)
	 ("\\.md\\'" . gfm-mode))
  :init
  (add-hook 'gfm-mode-hook
	    '(lambda ()
	       (electric-indent-local-mode -1))))
