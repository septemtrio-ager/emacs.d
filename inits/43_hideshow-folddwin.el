;;
;;; hideshow / fold-dwim.elの設定
;;

;; ===================================================================

;; 【参考】うわっ...私のEmacs、使いにくすぎ？だったら...
;; http://d.hatena.ne.jp/sandai/20120304/p2

;; ===================================================================

(el-get-bundle fold-dwim)

(use-package fold-dwim
  :defer t
  :init
  (use-package hideshow)
  (let ((hook))
    
    ;; 機能を利用するメジャーモード一覧
    
    (dolist (hook
	     '(emacs-lisp-mode-hook
	       c-mode-common-hook
	       python-mode-hook
	       php-mode-hook
	       ruby-mode-hook
	       js2-mode-hook
	       css-mode-hook
	       apples-mode-hook))
      (add-hook hook 'hs-minor-mode))))
