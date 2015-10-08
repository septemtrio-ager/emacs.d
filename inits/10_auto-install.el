;;
;;; auto-install.elの設定
;;

;; ===================================================================

;; 【参考】ESS で快適 R ライフ ～設定編～（2012年度版）
;; http://d.hatena.ne.jp/a_bicky/20120415/1334490586

;; ===================================================================

(el-get-bundle auto-install
  
  (require 'auto-install)

  ;; ~/.emacs.d/auto-install にダウンロードとインストールを行う
  (setq auto-install-directory "~/.emacs.d/auto-install") 

  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup)
  )
