;;
;;; helm.elの設定
;;

;; ===================================================================

;; 【参考】Helm をストレスなく使うための個人的な設定
;; http://d.hatena.ne.jp/a_bicky/20140104/1388822688

;; ===================================================================

(el-get-bundle helm

  (when (require 'helm-config nil t)
    (helm-mode 1)

    (global-set-key (kbd "M-x")     'helm-M-x)
    (global-set-key (kbd "C-x C-f") 'helm-find-files)
    (global-set-key (kbd "C-x C-r") 'helm-recentf)
    (global-set-key (kbd "M-y")     'helm-show-kill-ring)
    (global-set-key (kbd "C-c i")   'helm-imenu)

    (define-key helm-map (kbd "C-h") 'delete-backward-char)
    (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
    (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
    (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
    
    ;; helm-buffers-list のバッファ名の領域が狭いので
    (setq helm-buffer-max-length 50)
    
    ;; Disable helm in some functions
    (add-to-list 'helm-completing-read-handlers-alist '(find-alternate-file . nil))

    ;; Emulate `kill-line' in helm minibuffer
    (setq helm-delete-minibuffer-contents-from-point t)
    (defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
      "Emulate `kill-line' in helm minibuffer"
      (kill-new (buffer-substring (point) (field-end))))

    (defadvice helm-ff-kill-or-find-buffer-fname (around execute-only-if-exist activate)
      "Execute command only if CANDIDATE exists"
      (when (file-exists-p candidate)
	ad-do-it))

    (defadvice helm-ff-transform-fname-for-completion (around my-transform activate)
      "Transform the pattern to reflect my intention"
      (let* ((pattern (ad-get-arg 0))
	     (input-pattern (file-name-nondirectory pattern))
	     (dirname (file-name-directory pattern)))
	(setq input-pattern (replace-regexp-in-string "\\." "\\\\." input-pattern))
	(setq ad-return-value
	      (concat dirname
		      (if (string-match "^\\^" input-pattern)
			  ;; '^' is a pattern for basename
			  ;; and not required because the directory name is prepended
			  (substring input-pattern 1)
			(concat ".*" input-pattern)))))))
  
  ;; popwinでポップアップさせるときにバッファが二重になるのを防ぐ
  (helm-autoresize-mode 1)
  
  ;; maxとminの値を一緒にすることで
  ;; リサイズせず一定の大きさに表示するようにする
  (setq helm-autoresize-max-height 50)
  (setq helm-autoresize-min-height 50)
  
  )
