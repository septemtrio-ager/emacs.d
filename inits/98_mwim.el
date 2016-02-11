;;
;;; mwim.elの設定
;;

;; ===================================================================

;; 【参考】コードの先頭・末尾を認識したC-a/C-eを定義する
;; http://rubikitch.com/2015/01/26/mwim/

;; ===================================================================

;; (el-get-bundle mwim

;;   (global-set-key (kbd "C-a") 'mwim-beginning-of-code-or-line)
;;   (global-set-key (kbd "C-e") 'mwim-end-of-code-or-line)
  
;;   )

(el-get-bundle mwim)

(use-package mwim
  :bind (("C-a" . mwim-beginning-of-code-or-line)
	 ("C-e" . mwim-end-of-code-or-line))
  )
