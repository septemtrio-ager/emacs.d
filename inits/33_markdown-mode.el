;;
;;; markdown-mode.elの設定
;;

;; ===================================================================

;; 【参考】EmacsでGithub flavorなMarkdownをプレビュー確認したい
;; http://blog.shinofara.xyz/archives/354/

;; ===================================================================

(el-get-bundle markdown-mode
  
  (autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
  (add-to-list 'auto-mode-alist '("\\.text\\'" . gfm-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

  ;; ファイルパスを渡す
  (defun markdown-custom ()
    "markdown-mode-hook"
    (setq markdown-command-needs-filename t)
    )
  (add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))
  )
