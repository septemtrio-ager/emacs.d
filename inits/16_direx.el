;;
;;; direx.elの設定
;;

;; ===================================================================

;; 【参考】direx.elの設定
;; http://d.hatena.ne.jp/syohex/20130202/1359814263

;; ===================================================================

(el-get-bundle direx
  
  (require 'direx)

  ;; フレームを分割している際一番左にpopupされると、どのバッファに対して
  ;; ディレクトリ操作を行ったかが分かりづらくなってしまうので、
  ;; フレームを分割していときには、other-windowではなく、同じwindowに
  ;; 表示するようにする

  ;; ポップアップの設定は 04_popwin.el に記載

  (defun my/dired-jump ()
    (interactive)
    (cond (current-prefix-arg
	   (dired-jump))
	  ((not (one-window-p))
	   (or (ignore-errors
		 (direx-project:jump-to-project-root) t)
	       (direx:jump-to-directory)))
	  (t
	   (or (ignore-errors
		 (direx-project:jump-to-project-root-other-window) t)
	       (direx:jump-to-directory-other-window)))))

  (global-set-key (kbd "C-x C-j") 'my/dired-jump)
  )
