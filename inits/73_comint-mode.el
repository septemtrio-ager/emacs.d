;;
;; setting for comint-mode.el
;;

;; ===================================================================

;; 【参考】ESS で快適 R ライフ ～設定編～（2012年度版）
;; http://d.hatena.ne.jp/a_bicky/20120415/1334490586

; ====================================================================

;; comint-mode で重複するコマンドは履歴に保存しない
(add-hook 'comint-mode-hook
          (lambda ()
	    (setq comint-input-ignoredups t)))
