;;
;;; helm-swoop.elの設定
;;

;; ===================================================================

;; 【参考】バッファ全体をMigemo絞り込み検索して走り回れ！
;; http://rubikitch.com/2014/12/25/helm-swoop/

;; ===================================================================


;; ===================================================================

;; 【Memo】
;; C-x c b (M-x helm-resume)で終了したhelm-swoopを復元する

;; ===================================================================

(el-get-bundle helm-swoop

  (require 'helm-swoop)
  ;;; isearchからの連携を考えるとC-r/C-sにも割り当て推奨
  (define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
  (define-key helm-swoop-map (kbd "C-s") 'helm-next-line)

  ;;; 検索結果をcycleしない、お好みで
  (setq helm-swoop-move-to-line-cycle nil)

  (cl-defun helm-swoop-nomigemo (&key $query ($multiline current-prefix-arg))
    "シンボル検索用Migemo無効版helm-swoop"
    (interactive)
    (let ((helm-swoop-pre-input-function
	   (lambda () (format "\\_<%s\\_> " (thing-at-point 'symbol)))))
      (helm-swoop :$source (delete '(migemo) (copy-sequence (helm-c-source-swoop)))
		  :$query $query :$multiline $multiline)))
  ;;; C-M-:に割り当て
  (global-set-key (kbd "C-M-:") 'helm-swoop-nomigemo)

  ;;; [2014-11-25 Tue]
  (when (featurep 'helm-anything)
    (defadvice helm-resume (around helm-swoop-resume activate)
      "helm-anything-resumeで復元できないのでその場合に限定して無効化"
      ad-do-it))

  (defun isearch-forward-or-helm-swoop (use-helm-swoop)
    (interactive "p")
    (let (current-prefix-arg
	  (helm-swoop-pre-input-function 'ignore))
      (call-interactively
       (case use-helm-swoop
	 (1 'isearch-forward)
	 (4 'helm-swoop)
	 (16 'helm-swoop-nomigemo)))))
  (global-set-key (kbd "C-s") 'isearch-forward-or-helm-swoop)
  
  )
