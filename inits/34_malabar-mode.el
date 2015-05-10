;;
;;; malabar-mode.elの設定
;;

;; ===================================================================

;; 【参考】CEDET
;; http://sourceforge.net/p/cedet/mailman/cedet-devel/thread/qtmr4v6cj8p.fsf@gmail.com/

;; ===================================================================



;; メモ(2015/3/23)
;; cedetフォルダ内のpom.xmlファイルすべてのsnapshotのversionを1.0から3.0.5に変更した



;; 謎のエラーが発生するため使ってない
;; もう少ししたらまた使えるようにしたいなぁ


;; "eieio is already loaded.  Removing CEDET now would be unwise."
;; というエラーを回避するために、eieioをチェックしないように関数を再定義

;; (defvar cedet-remove-builtin-package-list
;;   '(
;;     ;;eieio
;;     semantic
;;     srecode
;;     ede
;;     data-debug
;;     )
;;   "CEDET packages part of Emacs proper that should be removed.
;;    The 'cedet' package itself is implicitly included.")



;; cedet-devel-load.el のディレクトリを指定
;; (load-file "~/.emacs.d/bzr-cedet/cedet-devel-load.el")



;; git version setting
;; (add-hook 'after-init-hook (lambda ()
;; 			     (message "activate-malabar-mode")
;; 			     (activate-malabar-mode)))

;; (add-hook 'malabar-java-mode-hook 'flycheck-mode)
;; (add-hook 'malabar-groovy-mode-hook 'flycheck-mode)



;; https://github.com/m0smith/malabar-mode/issues/152
;; (add-hook 'after-init-hook 
;;       (lambda ()
;;         (message "activate-malabar-mode")
;;         (add-hook 'malabar-java-mode-hook 'flycheck-mode)
;;         (add-hook 'malabar-groovy-mode-hook 'flycheck-mode)
;;         (activate-malabar-mode)))

;; .java ファイルは malabar-mode で開くようにする
;; (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))
