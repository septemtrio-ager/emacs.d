;;
;; setting for exec-path-from-shell.el
;; https://github.com/purcell/exec-path-from-shell

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
  :init
  (setq exec-path-from-shell-arguments '("-l"))
  :config
  (exec-path-from-shell-initialize)
  ;; (let ((envs '("PATH" "GEM_PATH" "GEM_HOME" "GOPATH" "PYTHONPATH")))
  ;;   (exec-path-from-shell-copy-envs envs))
  )
