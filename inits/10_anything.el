;;
;;; anything.elの設定
;;


;; helm.elに移行したため現在利用していない


;; ===================================================================

;; 【参考】ESS で快適 R ライフ ～設定編～（2012年度版）
;; http://d.hatena.ne.jp/a_bicky/20120415/1334490586

;; ===================================================================

;; Emacs の作業効率を劇的に改善する

;; (when (require 'anything-startup nil t)
;;   ;;
;;   ;; find-tag のショートカットを anything-c-etags-select に割り当てる
;;   ;;
;;   (define-key global-map (kbd "M-.") 'anything-c-etags-select))



;; ===================================================================

;; 【参考】[emacs][anything]人は俺を「recentfマスター」と呼ぶ
;; http://d.hatena.ne.jp/rubikitch/20091224/recentf

;; ===================================================================

;; (require 'recentf)
;; (setq recentf-save-file "~/.emacs.d/recentf")
;; (require 'recentf-ext)



;; ===================================================================

;; 【参考】Anythingの設定
;; http://www.gfd-dennou.org/member/uwabami/cc-env/emacs/anything_config.html

;; ===================================================================

;; anythingの情報源を追加する

;; (defvar my:anything-basic-sources
;;   '(anything-c-source-buffers+
;;     anything-c-source-ffap-line
;;     anything-c-source-ffap-guesser))
;; (defvar my:anything-other-sources
;;   '(anything-c-source-recentf
;;     anything-c-source-bookmarks
;;     anything-c-source-locate))
