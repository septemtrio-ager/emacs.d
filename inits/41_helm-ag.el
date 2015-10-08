;;
;;; helm-ag.elの設定
;;

;; ===================================================================

;; 【参考】ag(The Silver Searcher)をインストール
;; http://qiita.com/ktz47/items/bd58849a4bbaf1ba0934

;; ===================================================================



;; Ubuntu の場合は

;; $ apt-get install software-properties-common # (if required)
;; $ apt-add-repository ppa:mizuno-as/silversearcher-ag
;; $ apt-get update
;; $ apt-get install silversearcher-ag



;; ===================================================================

;; 【参考】helm-agを書きました
;; http://d.hatena.ne.jp/syohex/20130302/1362182193

;; ===================================================================

(el-get-bundle helm-ag
  
  (require 'helm-files)
  (require 'helm-ag)

  ;; ===================================================================

  ;; 【参考】emacs helm-ag.el : anything-grepのhelm版！
  ;;                           最初は粗く検索、あとはどんどん絞り込め！
  ;; http://rubikitch.com/tag/anything-grep-el/

  ;; ===================================================================

;;; ag以外の検索コマンドも使える
  ;; (setq helm-ag-base-command "grep -rin")
  ;; (setq helm-ag-base-command "csearch -n")
  ;; (setq helm-ag-base-command "pt --nocolor --nogroup")

;;; 現在のシンボルをデフォルトのクエリにする
  (setq helm-ag-insert-at-point 'symbol)

;;; C-M-gはちょうどあいてる
  (global-set-key (kbd "C-M-g") 'helm-ag)
  (global-set-key (kbd "C-M-k") 'backward-kill-sexp) ;推奨


  ;; .emacs.d以下を検索する M-x helm-ag-dot-emacs を定義

  (defun helm-ag-dot-emacs ()
    ".emacs.d以下を検索"
    (interactive)
    (helm-ag "~/.emacs.d/"))
  (require 'projectile nil t)
  (defun helm-projectile-ag ()
    "Projectileと連携"
    (interactive)
    (helm-ag (projectile-project-root)))
  ;; (helm-ag "~/.emacs.d/")
  )
