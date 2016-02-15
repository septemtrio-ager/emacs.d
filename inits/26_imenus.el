;;
;;; imenus.elの設定
;;

;; ===================================================================

;; 【参考】関数定義も関数呼び出しもhelm-swoopで一括検索！
;; http://rubikitch.com/2015/04/09/imenus/

;; ===================================================================

(el-get-bundle imenus)

(use-package imenus

  :disabled t

  :commands (imenus-helm-multi-swoop imenus-exit-minibuffer)
  
  :bind ("C-M-s" . (with-ido-completion imenus-mode-buffers))
  :config
  
  ;; エラー対策
  (defun imenu-find-default--or-current-symbol (&rest them)
    (condition-case nil
	(apply them)
      (error (thing-at-point 'symbol))))
  (advice-add 'imenu-find-default :around 'imenu-find-default--or-current-symbol)
  
  ;; なぜか現在のシンボルを取ってくれないから
  (defun imenus-exit-minibuffer ()
    (exit-minibuffer))

  ;; ido化: imenus/with-ido imenus-mode-buffers/with-idoを定義
  (with-ido-completion imenus)

  ;; C-M-s C-M-sで現在のシンボルをhelm-multi-swoopできるよ！
  ;; (global-set-key (kbd "C-M-s") (with-ido-completion imenus-mode-buffers))
  
  ;;; C-M-sで関数呼び出しをhelm-multi-swoopできるようにした
  (push '(helm-multi-swoop . imenus-helm-multi-swoop) imenus-actions)
  (defun imenus-helm-multi-swoop (buffers input)
    (helm-multi-swoop (replace-regexp-in-string "^.*|" "" input)
		      (mapcar 'buffer-name buffers)))

  (bind-key "C-M-s" 'imenus-exit-to-helm-multi-swoop imenus-minibuffer-map)
  
  (defun imenus-exit-to-helm-multi-swoop ()
    "Exit from imenu prompt; start `helm-multi-swoop' with the current input."
    (interactive)
    (setq imenus-exit-status 'helm-multi-swoop)
    (imenus-exit-minibuffer))
  
  )
