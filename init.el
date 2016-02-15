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

(add-to-load-path "site-lisp" "elpa" "auto-install")



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



;; init-loader.elで設定ファイルを分割する
(el-get-bundle init-loader

  (require 'init-loader)
  
  ;; 設定ファイルのあるフォルダを指定
  (setq inits_dir (expand-file-name "~/.emacs.d/inits/"))
  (init-loader-load inits_dir)
  
  ;; 読み込みエラーが発生したときだけエラーログを表示
  (setq init-loader-show-log-after-init 'error-only)

  ;; ===================================================================

  ;; 【参考】 init-loader.el で、エラーが起こったファイルが
  ;;                                     どれかを特定できるようにする
  ;; http://d.hatena.ne.jp/kitokitoki/20101205/p1

  ;; ===================================================================

  (defun init-loader-re-load (re dir &optional sort)
    (let ((load-path (cons dir load-path)))
      (dolist (el (init-loader--re-load-files re dir sort))
	(condition-case e
	    (let ((time (car (benchmark-run (load (file-name-sans-extension el))))))
	      (init-loader-log (format "loaded %s. %s" (locate-library el) time)))
	  (error
	   ;; (init-loader-error-log (error-message-string e)) ；削除
	   (init-loader-error-log (format "%s. %s" (locate-library el) (error-message-string e))) ;追加
	   )))))

  ;; inits フォルダのみ, 保存時に自動コンパイルして即反映させる
  ;; http://fukuyama.co/emacsd
  (defun auto-save-byte-compile-file ()
    "Do `byte-compile-file' and reload setting immediately, When elisp file saved only in inits folder."
    (interactive)
    (when (or (equal default-directory inits_dir)
	      (equal default-directory (abbreviate-file-name inits_dir)))
      (byte-compile-file buffer-file-name t)
      ))

  (add-hook 'emacs-lisp-mode-hook
	    (lambda ()
	      (add-hook 'after-save-hook 'auto-save-byte-compile-file nil t)))
  
  )





