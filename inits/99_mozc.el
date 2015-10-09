;;
;;; mozc.elの設定
;;

;; ===================================================================

;; 【参考】Emacs:mozcで日本語入力
;; http://compress.hatenadiary.com/entry/2014/02/24/001932

;; ===================================================================

;; ==================================================================

;; 【参考】emacs-mozc を動かすための設定（emacs 設定編）
;; http://www49.atwiki.jp/ntemacs/pages/48.html

;; ===================================================================

(el-get-bundle mozc

  (require 'mozc)
  (setq default-input-method "japanese-mozc")

  ;; 「変換」キーでmozcの変換を行えるようにした
  (global-set-key (kbd "<zenkaku-hankaku>") 'toggle-input-method)

  (add-hook 'mozc-mode-hook
	    (lambda()
	      (define-key mozc-mode-map (kbd "<zenkaku-hankaku>") 'toggle-input-method)))
  
  
  ;; minibuffer に入った時、IME を OFF にする
  (add-hook 'minibuffer-setup-hook
	    (lambda ()
	      ;; isearch の中でなければ input-method を無効にする（他に良い判定方法があれば、変更してください）
	      (unless (memq 'isearch-done kbd-macro-termination-hook)
		(deactivate-input-method))))
    
  )

(el-get-bundle mozc-popup
  
  (require 'mozc-popup)
  
  ;; 変換候補をポップアップで表示させるようにする
  (setq mozc-candidate-style 'popup)
  
  )

(el-get-bundle iRi-E/mozc-el-extensions
  
  (require 'mozc-cursor-color)
  
  ;; カーソルの色の設定
  (setq mozc-cursor-color-alist
	'((direct . "yellow")
	  (read-only . "lime green")
	  (hiragana . "dark orange")
	  (full-katakana . "goldenrod")
	  (half-ascii . "dark orchid")
	  (full-ascii . "orchid")
	  (half-katakana . "dark goldenrod")))
  
  
  (require 'mozc-mode-line-indicator)
  
  
  ;; (require 'mozc-isearch)
  
  )
