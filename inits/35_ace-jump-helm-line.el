;;
;;; ace-jump-helm-line.elの設定
;;

;; (el-get-bundle ace-jump-helm-line

;;   (require 'ace-jump-helm-line)

;;   (define-key helm-map (kbd "`") 'ace-jump-helm-line--with-error-fallback)
;;   (define-key helm-map (kbd "@") 'ace-jump-helm-line-and-execute-action)

;;   ;;; anything-shortcut-keys-alistと同じように設定
;;   (setq avi-keys (append "asdfghjklzxcvbnmqwertyuiop" nil))

;;   ;;; ちょっとアレンジ
;;   (defun ajhl--insert-last-char ()
;;     (insert (substring (this-command-keys) -1)))
;;   (defun ace-jump-helm-line--with-error-fallback ()
;;     "ヒント文字以外の文字が押されたらその文字を挿入するように修正"
;;     (interactive)
;;     (condition-case nil
;; 	(ace-jump-helm-line)
;;       (error (ajhl--insert-last-char))))
;;   (defun ace-jump-helm-line-and-execute-action ()
;;     "anything-select-with-prefix-shortcut互換"
;;     (interactive)
;;     (condition-case nil
;; 	(progn (ace-jump-helm-line)
;; 	       (helm-exit-minibuffer))
;;       (error (ajhl--insert-last-char))))
;;   )

(el-get-bundle ace-jump-helm-line)

(use-package ace-jump-helm-line
  :config
  (define-key helm-map (kbd "`") 'ace-jump-helm-line--with-error-fallback)
  (define-key helm-map (kbd "@") 'ace-jump-helm-line-and-execute-action)

  ;;; anything-shortcut-keys-alistと同じように設定
  (setq avi-keys (append "asdfghjklzxcvbnmqwertyuiop" nil))

  ;;; ちょっとアレンジ
  (defun ajhl--insert-last-char ()
    (insert (substring (this-command-keys) -1)))
  (defun ace-jump-helm-line--with-error-fallback ()
    "ヒント文字以外の文字が押されたらその文字を挿入するように修正"
    (interactive)
    (condition-case nil
	(ace-jump-helm-line)
      (error (ajhl--insert-last-char))))
  (defun ace-jump-helm-line-and-execute-action ()
    "anything-select-with-prefix-shortcut互換"
    (interactive)
    (condition-case nil
	(progn (ace-jump-helm-line)
	       (helm-exit-minibuffer))
      (error (ajhl--insert-last-char))))
  )
