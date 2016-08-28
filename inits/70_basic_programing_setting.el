;;
;; common setting for programing environment
;;


;; 閉じ括弧を自動で補完する
(electric-pair-mode 1)



;; カーソルの位置が何行目かを表示する
(line-number-mode t)



;; 空白を一度に削除する
(setq c-hungry-delete-key t)



;; ===================================================================

;; 【参考】emacsのcompileでディレクトリを指定する
;; http://blog.livedoor.jp/regular_bound/archives/54676139.html

;; ===================================================================

(defun my-compile (dir-name)
  "Compile."
  (interactive "DDirectory: ")
  (let ((default-directory dir-name))
    (command-execute 'compile)))
