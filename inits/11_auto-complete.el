;;
;;; auto-complete.elの設定
;;

;; ===================================================================

;; 【参考】ESS で快適 R ライフ ～設定編～（2012年度版）
;; http://d.hatena.ne.jp/a_bicky/20120415/1334490586

;; ===================================================================

;; ===================================================================

;; 【参考】yasnippet 8.0の導入からスニペットの書き方、
;;                           anything/helm/auto-completeとの連携
;; http://fukuyama.co/yasnippet

;; ===================================================================

(el-get-bundle auto-complete
  
  (require 'auto-complete)
  ;;(require 'auto-complete-config)

  ;; 補完機能の追加
  (when (require 'auto-complete-config nil t)
    ;;   (global-auto-complete-mode t)
    (add-to-list 'ac-dictionary-directories (expand-file-name "~/.emacs.d/elisp/ac-dict"))
    (ac-config-default)
    ;; (defun ac-quick-help-force ()
    ;; 	(interactive)
    ;; 	(ac-quick-help t))
    ;; (define-key ac-completing-map (kbd "M-h") 'ac-quick-help-force)
    ;; (define-key ac-completing-map (kbd "C-n") 'ac-next)
    ;; (define-key ac-completing-map (kbd "C-p") 'ac-previous)
    )

  ;; C-n / C-p で選択できるようにする
  (setq ac-use-menu-map t)

  (global-auto-complete-mode t)

;;; 適用するメジャーモードを足す
  (add-to-list 'ac-modes 'scss-mode)
  (add-to-list 'ac-modes 'web-mode)



;;; ベースとなるソースを指定
  (defvar my-ac-sources
    '(
      ;; ac-source-yasnippet
      ;; ac-source-abbrev
      ac-source-dictionary
      ac-source-words-in-same-mode-buffers
      ac-source-mozc ; ac-mozcを利用する
      ))



;;; 個別にソースを指定
  (defun ac-scss-mode-setup ()
    (setq-default ac-sources (append '(ac-source-css-property) my-ac-sources)))
  (defun ac-web-mode-setup ()
    (setq-default ac-sources my-ac-sources))

  (add-hook 'scss-mode-hook 'ac-scss-mode-setup)
  (add-hook 'web-mode-hook 'ac-web-mode-setup)



  ;; R用のauto-complete
  ;;(require 'auto-complete-acr)

  ;; yasnippetとの連携
  ;;(require 'auto-complete-yasnippet)
  )
