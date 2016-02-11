;;
;;; migemo.elの設定
;;

;; ===================================================================

;; 【参考】ローマ字で日本語検索する神ツールMigemoが更新されたよ！
;; http://rubikitch.com/2014/08/20/migemo/

;; ===================================================================



;; ===================================================================

;; 【参考】migemoを使ってEmacsライフを快適に
;; http://qiita.com/catatsuy/items/c5fa34ead92d496b8a51

;; ===================================================================

(el-get-bundle migemo
  
  (autoload 'migemo "migemo" nil t)
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs"))

  ;; cmigemoのpathを指定
  (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")

  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  (setq migemo-coding-system 'utf-8-unix)
  (load-library "migemo")
  (migemo-init)
  )
