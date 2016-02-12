;;
;;; PHP開発環境の設定
;;

;; ===================================================================

;; 【参考】【Emacs24.4リリース記念】いま使っているEmacsのPHP開発環境
;;

;; ===================================================================

(el-get-bundle php-mode)

;; helmや最新版PHPに対応したバージョン
(el-get-bundle suzuki/php-completion)

(use-package php-mode
  :defer t
  :config
  (use-package php-completion)
  (php-completion-mode t)
  ;; array()のインデントを変更する
  (defun ywb-php-lineup-arglist-intro (langelem)
    (save-excursion
      (goto-char (cdr langelem))
      (vector (+ (current-column) c-basic-offset))))

  (defun ywb-php-lineup-arglist-close (langelem)
    (save-excursion
      (goto-char (cdr langelem))
      (vector (current-column))))
  
  (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
  (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)

  (make-variable-buffer-local 'ac-sources)
  (add-to-list 'ac-sources 'ac-source-php-completion)
  (auto-complete-mode t)
  
  )
