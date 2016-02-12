;;
;;; direx.elの設定
;;

;; ===================================================================

;; 【参考】direx.elの設定
;; http://d.hatena.ne.jp/syohex/20130202/1359814263

;; ===================================================================

(use-package direx
  
  :disabled t
  :commands my/dired-jump
  :bind ("C-x C-j" . my/dired-jump)
  
  :config
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
	       (direx:jump-to-directory-other-window))))))
