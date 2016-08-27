;;
;;; setting for exec-path-from-shell.el
;;

;; ===================================================================

;; 【参考】EmacsでPATHの設定が引き継がれない問題をエレガントに解決する
;; http://qiita.com/catatsuy/items/3dda714f4c60c435bb25

;; ===================================================================

;; ===================================================================

;; 【参考】Speed issue with exec-path-from-shell-initialize
;; https://github.com/purcell/exec-path-from-shell/issues/36

;; Don't pass -i to the shell in exec-path-from-shell
;; https://github.com/whatyouhide/emacs.d/commit/28382fdcc21d0b338814e870e76b4be0c9336139

;; ===================================================================

(el-get-bundle exec-path-from-shell)

(use-package exec-path-from-shell
  
  :if (memq window-system '(mac ns))
  
  :config
  (progn
    (setq exec-path-from-shell-arguments '("-l"))
    (exec-path-from-shell-initialize)
    (let ((envs '("PATH" "GEM_PATH" "GEM_HOME" "GOPATH" "PYTHONPATH")))
      (exec-path-from-shell-copy-envs envs))
    
    ))

;;   ;; ===================================================================

;;   ;; 【参考】Emacsでrbenvを使う環境変数PATHで手間取ったのでメモ
;;   ;; http://blog.be-open.net/emacs/emacs-rbenv-path/

;;   ;; ===================================================================

;;   ;; (dolist (dir (list
;;   ;; 		"/sbin"
;;   ;; 		"/usr/sbin"
;;   ;; 		"/bin"
;;   ;; 		"/usr/bin"
;;   ;; 		"/opt/local/bin"
;;   ;; 		"/sw/bin"
;;   ;; 		"/usr/local/bin"
;;   ;; 		))
    
;;   ;;   ;; PATH と exec-path に同じ物を追加する
;;   ;;   (when (and (file-exists-p dir) (not (member dir exec-path)))
;;   ;;     (setenv "PATH" (concat dir ":" (getenv "PATH")))
;;   ;;     (setq exec-path (append (list dir) exec-path))))
  
;;   )
