;;
;;; バックアップとオートセーブファイルの設定
;;

;; ===================================================================

;; 【参考】Emacs実践入門 ― 思考を直感的にコード化し，開発を加速する
;; http://gihyo.jp/book/2012/978-4-7741-5002-4

;; ===================================================================

;; バックアップファイルを作成する
(setq make-backup-files t)

;; オートセーブファイルを作成する
(setq auto-save-default t)

;; バックアップとオートセーブファイルを
;; ~/emacs.d/backup/ へ集める
(add-to-list 'backup-directory-alist
             (cons "." "~/emacs.d/backups/"))
(setq auto-save-file-name-transformsp
      `((".*" ,(expand-file-name "~/emacs.d/backups/") t)))



;; ===================================================================

;; 【参考】Emacs の Commands History を再起動後も使用する
;; http://qiita.com/akisute3@github/items/4b489c0abbb39a5dcc45

;; ===================================================================

;; (setq desktop-globals-to-save '(extended-command-history))
;; (setq desktop-files-not-to-save "")
;; (desktop-save-mode 1)
