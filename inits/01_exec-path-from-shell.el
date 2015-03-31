;;
;;; exec-path-from-shell.elの設定
;;

;; ===================================================================

;; 【参考】EmacsでPATHの設定が引き継がれない問題をエレガントに解決する
;; http://qiita.com/catatsuy/items/3dda714f4c60c435bb25

;; ===================================================================

(el-get-bundle exec-path-from-shell
  
  (require 'exec-path-from-shell)

  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

  (let ((envs '("PATH" "GEM_PATH" "GEM_HOME" "GOPATH")))
    (exec-path-from-shell-copy-envs envs))

  (exec-path-from-shell-copy-env "PYTHONPATH")
  )


;; ===================================================================

;; 【参考】Emacsでrbenvを使う環境変数PATHで手間取ったのでメモ
;; http://blog.be-open.net/emacs/emacs-rbenv-path/

;; ===================================================================

(dolist (dir (list
              "/sbin"
              "/usr/sbin"
              "/bin"
              "/usr/bin"
              "/opt/local/bin"
              "/sw/bin"
              "/usr/local/bin"
              (expand-file-name "~/bin")
              (expand-file-name "~/.emacs.d/bin")
              ))
 ;; PATH と exec-path に同じ物を追加します
 (when (and (file-exists-p dir) (not (member dir exec-path)))
   (setenv "PATH" (concat dir ":" (getenv "PATH")))
   (setq exec-path (append (list dir) exec-path))))
