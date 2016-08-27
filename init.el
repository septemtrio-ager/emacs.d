;;
;;; init.el
;;

;; load-pathを 追加する関数
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; site-lisp, elpa, auto-complete, my-lispディレクトリに
;; load-pathを通すようにする
(add-to-load-path "site-lisp" "elpa" "auto-install" "my-lisp")



;; ===================================================================

;; 【参考】Caskはもう古い、これからはEl-Get - いまどきのEmacsパッケージ管理
;; http://d.hatena.ne.jp/tarao/20150221/1424518030

;; ===================================================================

;; El-Getがインストールされていなかったらインストールする
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))

(unless (require 'el-get nil 'noerror)
 (with-current-buffer
     (url-retrieve-synchronously
      "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
   (goto-char (point-max))
   (eval-print-last-sexp)))



;; el-get-lockを用いてバージョン固定したElispをダウンロードする
(el-get-bundle tarao/el-get-lock)
(el-get-lock)
(add-to-list 'auto-mode-alist '("el-get.lock" . emacs-lisp-mode))



;; init-loader.elで設定ファイルを分割する
(el-get-bundle init-loader

  (require 'init-loader)
  
  ;; 設定ファイルのあるフォルダを指定
  (setq inits_dir (expand-file-name "~/emacs.d/inits/"))
  (init-loader-load inits_dir)
  
  ;; 読み込みエラーが発生したときだけエラーログを表示
  (setq init-loader-show-log-after-init 'error-only)

  ;; inits フォルダのみ, 保存時に自動コンパイルして即反映させる
  ;; http://fukuyama.co/emacsd
  ;; (defun auto-save-byte-compile-file ()
  ;;   "Do `byte-compile-file' and reload setting immediately, When elisp file saved only in inits folder."
  ;;   (interactive)
  ;;   (when (or (equal default-directory inits_dir)
  ;; 	      (equal default-directory (abbreviate-file-name inits_dir)))
  ;;     (byte-compile-file buffer-file-name t)))

  ;; (add-hook 'emacs-lisp-mode-hook
  ;; 	    (lambda ()
  ;; 	      (add-hook 'after-save-hook 'auto-save-byte-compile-file nil t)))
  
  )
